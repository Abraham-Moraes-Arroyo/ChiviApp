//
//  chinatown.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/15/23.
//

import SwiftUI
import Foundation
import FirebaseFirestore
import FirebaseAuth

//struct Chinatowns {
//    @State var isFavorite: Bool
//}



struct dynamictours: View {
    
    //Here is where I am going to have the favorite variable where we will then recall the favorites in a different screen
    
    var tourId: String
    
    
    
    
    let db = Firestore.firestore()
    
    //    let coolRestaurant:Chinatowns = Chinatowns(isFavorite:true)
    
    @EnvironmentObject var fireBaseUtility:DataModels
    // observes fiebase
    
    
    @State private var destinations: [Destination] = []
    
    @State private var favoriteisOn:Bool = true
    let HARDCODEDUSERID = "nlag0HjwwvbLVt48xBz4lR6MUE72"
    // you will have to use the auth.auth to get users new id
    
    
    var body: some View {
        
        
        
        
        VStack{
            Text("In this route you will see")
                .fontWeight(.heavy)
            Toggle(isOn: $favoriteisOn) {
                Text("Favorites")
            }
            .onChange(of: favoriteisOn) { boolState in
                if boolState{ //if boolstate is true(favorite is toggled) do the following
                    
                    //TODO if favorite gets selected, query fairebase for only favoite destinations, then set that as destinations
                    
                    //same task from favorites, just copied over
                    Task{
                        
                        
                        do{
                            
                            var tempFavoriteDocuments: [Destination] = []
                            
                            //NEW* Pull the users favorites with the collectionCAll
                            
                            
                            //db and fs are both firestore.firestore objects
                            //whole line of code gets the users doc from firebase and gets its data as a dictionary
                            let favoritesData:[String:Any] = try await db.collection("Users").document(HARDCODEDUSERID).getDocument().data()! //force data to unwrap (will be null if failed)
                            
                            let userFavorites:[String] = favoritesData["favorites"] as! [String]
                            
                            //Modified Query to only return documents thats names match the ones in favorites
                            //ArrayContains can return items that match with at least 30 items, so theres a search limit, but 30 should be line
                            let favoriteToursSnapShot = try await db.collection(tourId).whereField("name", in: userFavorites).getDocuments()
                            
                            for document in favoriteToursSnapShot.documents{
                                let tempDestinationData = document.data()
                                
                                let tempDestination = Destination(dictionary: tempDestinationData)
                                
                                tempFavoriteDocuments.append(tempDestination)
                                
                                print("\(document.documentID) => \(document.data())") //Debug Statement
                            }
                            
                            destinations = tempFavoriteDocuments
                            
                        }catch{
                            print("Error Caught While Converting POI References To Destinations \(error)")
                        }
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                }//bottom bool state true
                //have the else statement here. to get out of the label toggle
                
            }
            List{
                
                
                ForEach($destinations) { $location in
                    
                    HStack{
                        @State var starfill = Color(.gray)
                        
                        
                        Image(systemName: "star.fill").foregroundColor(location.isFavorite).onTapGesture {
                            //The favorite code would go here
                            //updating the star color to yellow
                            
                                if favoriteisOn {
                                    Task{
                                        let docref = fs.collection("Users").document(HARDCODEDUSERID)
                                        let oldfavorites = try await docref.getDocument().data()
                                        var favorites:[String] = oldfavorites!["favorites"] as! [String]
                                        let removeIndex = favorites.firstIndex(of: location.name)
                                        favorites.remove(at: removeIndex!)
                                        docref.setData(["favorites":favorites],merge: true){ error in
                                            if let error = error{
                                                print("error writing favorites")
                                            }else{
                                                //Can I make it so I can remove the favorite here?
                                                print("document written")
                                            }
                                            
                                        }// add print statements to see where we are going to
                                    }
                                } else {
                                    
                                    Task{
                                        location.isFavorite = Color(.yellow)
                                        print("starfill", starfill)
                                        let docref = fs.collection("Users").document(HARDCODEDUSERID)
                                        let oldfavorites = try await docref.getDocument().data()
                                        var favorites:[String] = oldfavorites!["favorites"] as! [String]
                                        favorites.append(location.name)
                                        //for adding data
                                        docref.setData(["favorites":favorites],merge: true){ error in
                                            if let error = error{
                                                print("error writing favorites")
                                            }else{
                                                //Can I make it so I can remove the favorite here?
                                                print("document written")
                                            }
                                            
                                        }
                                    }
                                    
                                }
                                
                                
                            } //end of onTapGesture
                            
                            Image(location.image)
                                .resizable()
                                .frame(width: 50, height: 50)
                            NavigationLink(destination: DynamicLocationView(individualDestination: location)) {
                                // for now we are going to have to lead them to Nine Dragons but later we will use that file as a template for the other invididual locations
                                
                                Text(location.name)
                                
                            }
                            
                        }// end of chinatown Gate
                        
                        
                    } // end of forEach
                    
                }
            }.onAppear{
                
                
                Task{
                    
                    
                    do{
                        var tempDocuments: [Destination] = []
                        
                        let tourSnapShot = try await db.collection(tourId).getDocuments()
                        
                        for document in tourSnapShot.documents{
                            let tempDestinationData = document.data()
                            
                            let tempDestination = Destination(dictionary: tempDestinationData)
                            
                            tempDocuments.append(tempDestination)
                            
                            print("\(document.documentID) => \(document.data())") //Debug Statement
                        }
                        
                        destinations = tempDocuments
                        
                    }catch{
                        print("Error Caught While Converting POI References To Destinations \(error)")
                    }
                    
                    
                    
                }
            }
        }
    }

    
    #Preview {
        dynamictours(tourId: "china-town-tour").environmentObject(DataModels())
    }


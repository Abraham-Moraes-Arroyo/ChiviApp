//
// chinatown.swift
// Chivi
//
// Created by Abraham Morales Arroyo on 11/15/23.
//
import SwiftUI
import Foundation
import FirebaseFirestore
import FirebaseAuth
//struct Chinatowns {
//  @State var isFavorite: Bool
//}
struct dynamictours: View {
  //Here is where I am going to have the favorite variable where we will then recall the favorites in a different screen
    
//    this is a variable in order to have the screen/ favorites to show up I got it from a tutorial in hacking Swift
@State var showGreeting = true
    
    
  var tourId: String
  let db = Firestore.firestore()
//  let coolRestaurant:Chinatowns = Chinatowns(isFavorite:true)
  @EnvironmentObject var fireBaseUtility:DataModels
    
    @State private var userFavorites: [String] = []
// observes fiebase
  @State private var destinations: [Destination] = []
  var body: some View {
    VStack{
      Text("In this route you will see")
        .fontWeight(.heavy)
   //have the switch here.
        
        Toggle(isOn: $showGreeting){
            Text("Show Welcome screen message")
        }.padding()
        
        if showGreeting {
            //here is where I am going to have the "favorites"
            Text("Hello World")
        }
        
      List{
        ForEach(destinations) { location in
           
           
          HStack{ //this is for adding favorites
              //after 2 Bill Available and so is Devin
              
              
              Image(systemName: "star.fill").onTapGesture {
                  // Here is where you will drop the code into
                      let docref = fs.collection("Users").document((Auth.auth().currentUser?.uid.description)!)
                      //Docref is refering to the current users document
                  var favorites:[String] = [] // favorites will always be empty with one item, but the firebase will treat them as an array
                      favorites.append(location.name)//TODO COme back to this
                      docref.setData(["favorites": favorites], merge: true){ error in
                          if let error = error {
                              print("Error writing document: \(error)")
                  
                          } else {
                              print("Document succesfully merged!")
                          }
                      }
              }
              
              
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
            var userData = getUsersFavorites()
                userFavorites = userData["favorites"]
            
        }catch{
          print("Error Caught While Converting POI References To Destinations \(error)")
            
        }
          
          
      }
    } //
  }
}


func getUsersFavorites() async -> [String:Any]{
     
     let db = Firestore.firestore()
     
     //data variable to return
     var data:[String:Any] = [:]
     do{
         let userid = (Auth.auth().currentUser?.uid.description)!
         let dataDoc:DocumentSnapshot = try await db.collection("Users").document(userid).getDocument()
         
         let documentData = dataDoc.data()
         data = documentData!
         
     }catch{
         print(error.localizedDescription, "Error Retriving Foods")
     }
     
     return data
     
 }

#Preview {
  dynamictours(tourId: "china-town-tour").environmentObject(DataModels())
}

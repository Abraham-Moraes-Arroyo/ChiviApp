//
//  number3.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 10/21/23.
//

import SwiftUI
import MapKit

struct tours {
    @State var isFavorite: Bool
    
}



struct number3: View {

    let cooltour:tours = tours(isFavorite:true)
//    view builder
    
    @State private var ischecked: Bool = false
    
    // at the end you will be getting rid of the @ but keeping the var model .
    
    var body: some View {
        NavigationView{
  
            VStack{
                Text("Tour De Chicago")
                
                List{

                    HStack{
                        Image("chinatownmid")
                            .resizable()
                            .frame(width: 50, height: 50)
                        NavigationLink(destination: dynamictours(tourId: "china-town-tour")) {
                            Text("ChinaTown RedLine")
                               
//                            if (cooltour.isFavorite){
//                                Image(systemName: "star.fill")
//                                    .foregroundStyle(.gray)
//                                    .onTapGesture(perform: {
//1. check if its already checked
// if its checked then it continues and pushes the next favorite item. else turn star gray
                                        
                                        
//I need to add an additional paramter where I can add the file that is in the menus folder I need to pass the view
                                        
//    41.852652, -87.632226

//                                        let newfavoriteitem: favoriteitem = favoriteitem(name: "ChinaTown RedLine", image: "chinatownmid", lat:     41.852652, long: -87.632226)
//                                        
//                                        d.favorites.append(newfavoriteitem)
//                                        print(d.favorites)
//                                            
//                                    })
//                                    
//                            } // end of adding a new tour to favorites
                          
                            
                            
                            //this is to check if the tour has already been placed in the favorite section.
//                            if (cooltour.isFavorite == cooltour.isFavorite){
//                                print(false)
//                            }
                            
                            
                            
                        }
                    }// end of chinatown
                    HStack{
                        Image("berlin")
                            .resizable()
                            .frame(width: 50, height: 50)
                        NavigationLink(destination: berlinW()) {
                            Text("BerlinWall BrownLine")
//                          41.884737, -87.631194
                            
                        }
                    }// end of berlinwall
                    HStack{
                        Image("picaso")
                            .resizable()
                            .frame(width: 50, height: 50)
                        NavigationLink(destination: mythicalblueline()) {
                            Text("Mythical Monument BlueLine")
                            
                            
                        }
                    }// end of blueline
//                    agora
//                    41.868123, -87.623380
              

                } // end of List
                VStack{
                    Text("More Extensive")
                    List{
                        HStack{
                            Image("polishtriangle")
                                .resizable()
                                .frame(width: 50, height: 50)
                            NavigationLink(destination: fontaineBlueLine()) {
                                Text("Fontaine BlueLine")
                            }
                        }// end of chinatown
                        
                        
                        
                    }
                }
                
            }// end of Vstack
            
       
        }
    }// end of body
}

#Preview {
    number3()
}



//
//final class ContentViewModel:NSObject, ObservableObject,
//    CLLocationManagerDelegate{
//    
//    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 41.88, longitude: -87.63), span:MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
//    
//    
//    
//    var locationManaager: CLLocationManager?
//    
//    func checkIfLocationServicesIsEnabled() {
//        
//        if CLLocationManager.locationServicesEnabled(){
//            locationManaager = CLLocationManager()
//            // force Unwrap
//            locationManaager!.delegate = self
//            
//        } else {
//            print("show an alert letting them know that this is off and that it has to be turned on.")
//        }
//    }
//    // the reason why this is private is because we want the location to be asked in one of the screens of the application. Since we are making an app that will have multiple screens.
//    private func checkLocationAuthorization(){
//        guard let locationManaager = locationManaager else { return }
//        
////        here is where we are going to check on all of the cases of location Authorization
//        switch locationManaager.authorizationStatus{
//            
//        case .notDetermined:
//            // Here is where we are going to pop up the screen where if we can recieve permission from the user to get their permission
//            locationManaager.requestWhenInUseAuthorization()
//        case .restricted:
//            print("Your location is restricted likely due to parental controls.")
//        case .denied:
//            print("You have denined this apps location permission. Go into setting to change it")
//        case .authorizedAlways, .authorizedWhenInUse:
//            region = MKCoordinateRegion(center:locationManaager.location!.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
//        @unknown default:
//            break
//        }
//        
//    }
//    
//    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
//        checkLocationAuthorization()
//        as soon as we call locationManaager it will check for location at the start but also whenever the user decides to change the permission of the Application. That way we can have an app that works as it should all the time.
//    }
//}

//this is where I got the link for the tutorial
//https://www.youtube.com/watch?v=hWMkimzIQoU 


//
//  number3.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 10/21/23.
//

import SwiftUI
import MapKit

struct number3: View {
//    @StateObject private var viewModel = ContentViewModel()
    
//    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 41.88, longitude: -87.63), span:MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
//    
//    
    
    
    var body: some View {
        NavigationView{
            //        Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
            //            .ignoresSafeArea()
            //            .accentColor(Color(.systemPink))
            //            .onAppear{
            //                viewModel.checkIfLocationServicesIsEnabled()
            //            }
            VStack{
                Text("screen 3")
                HStack{
                    NavigationLink(destination: chinatown()) {
                        Text("ChinaTown RedLine")
                        
                    }
                    
                    
                }
            }
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


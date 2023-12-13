//
//  ChiviApp.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 10/21/23.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

      
//      here is where I have changed the time that the logo will appear when first running the app
//      the tutorial for that is here https://www.youtube.com/watch?v=sYb9drd9Xdk 
      Thread.sleep(forTimeInterval: 3)
    return true
  }
}


@main
struct ChiviApp: App {
    
    // register app delegate for Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
//    @EnvironmentObject var d:datamodel

    
    var body: some Scene {
        WindowGroup {
//            at the end you will have to pass the var favorites at the end
            ContentView(sample: 12)
            // this was added on Friday Dec 1
//            dynamictours(tourId: "china-town-tour")
        }
    }
}


// Code to implement Firebase into Chivi
// Commented out and stored here for later debugging purposes

//import SwiftUI
//import FirebaseCore
//
//
//class AppDelegate: NSObject, UIApplicationDelegate {
//  func application(_ application: UIApplication,
//                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//    FirebaseApp.configure()
//
//    return true
//  }
//}
//
//@main
//struct YourApp: App {
//  // register app delegate for Firebase setup
//  @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
//
//
//  var body: some Scene {
//    WindowGroup {
//      NavigationView {
//        ContentView()
//      }
//    }
//  }
//}

//
//  PointOfInterest.swift
//  FirebaseDemo2023
//
//  Created by Devin Grischow on 11/6/23.
//

import Foundation
import Firebase
import FirebaseFirestore

class Destination:ObservableObject, Identifiable {
    
    
    //data fields for firebase
    @Published var name:String = ""
    
    @Published var image:String = ""

    
    @Published var directions:String = ""
    
    @Published var description:String = ""
    
    
    
    
    @Published var longitude:Double = 0.0
    
    @Published var latitude:Double = 0.0
    
    
    var dictionary:[String:Any] {
        return ["name":name, "description":description, "image":image, "long":longitude, "lat": latitude, "directions":directions]
    }
    
    
    init(name: String, description: String, image: String, longitude: Double, latitude: Double, directions:String) {
        self.name = name
        self.description = description
        self.image = image
        self.longitude = longitude
        self.directions = directions
        self.latitude = latitude
        
    }
    
    
    convenience init () {
        
        self.init(name: "", description: "", image: "", longitude: 0.0, latitude: 0.0, directions: "")
        
        
    }
    
    
    convenience init (dictionary:[String:Any]){
        let name = dictionary["name"] as! String? ?? ""
        let description = dictionary["description"] as! String? ?? ""
        let directions = dictionary["directions"] as! String? ?? ""

        let image = dictionary["image"] as! String? ?? ""
        let longitude = dictionary["longitude"] as! Double? ?? 0.0
        let latitude = dictionary["latitude"] as! Double? ?? 0.0
        
        

        self.init(name: name, description: description, image: image, longitude: longitude, latitude: latitude, directions: directions )



    }
   
    
    
}



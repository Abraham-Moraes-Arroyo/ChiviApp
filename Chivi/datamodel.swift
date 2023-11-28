//
//  datamodel.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/28/23.
//

import SwiftUI

//observes the favorite objects

class datamodel: ObservableObject{
    @Published var favorites:[favoriteitem] = []
    
}
//class varaible that moderates class items 

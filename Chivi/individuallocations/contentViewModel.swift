//
//  contentViewModel.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/29/23.
//
//
//import Foundation
//import SwiftUI
//
//extension ContentView {
//    final class ViewModel: ObservableObject {
//        
//        @Published var items = [favoriteitem]
//        @Published var showingFavs = false
//        @Published var savedItems: Set<String> = ["Chinatown"]
//        
//        var filteredItems: [favoriteitem] {
//            if showingFavs {
//                return items.filter{savedItems.contains($Chinatown.id)}
//            } else {
//                return items 
//            }
//        }
//        
//        
//    }
//}

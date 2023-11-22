//
//  ContentView.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 10/21/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            number1()
                .tabItem {
                    Image(systemName: "leaf.fill")
                    Text("Home")
                }
            number2()
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
            number3()
                 .tabItem {
                     Image(systemName: "mappin.circle.fill")
                     Text("Tours")
                 }
            Number4()
                 .tabItem {
                     Image(systemName: "star")
                     Text("Favorites")
                 }
        }
    }
}

#Preview {
    ContentView()
}

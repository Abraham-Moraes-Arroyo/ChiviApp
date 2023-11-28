//
//  ContentView.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 10/21/23.
//

import SwiftUI
// This is rogelio
struct ContentView: View {
    var sample: Int
    var body: some View {
        TabView{
            number1()
                .tabItem {
                    Image(systemName: "house.fill")
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
    ContentView(sample: 12)
}

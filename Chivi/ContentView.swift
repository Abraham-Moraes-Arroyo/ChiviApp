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
            number3()
                 .tabItem {
                     Image(systemName: "map")
                     Text("Tours")
                 }
            number2()
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("Help")
                }
           
      
        }
    }
}

#Preview {
    ContentView(sample: 12)
}

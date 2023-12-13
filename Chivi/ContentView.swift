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
                    Text("Guide")
                }
            number3()
                 .tabItem {
                     Image(systemName: "mappin.circle.fill")
                     Text("Tours")
                 }
      
        }
    }
}

#Preview {
    ContentView(sample: 12)
}

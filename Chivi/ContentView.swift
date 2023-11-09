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
                    Text("Events")
                }
            number2()
                .tabItem {
                    Image(systemName: "snowflake")
                    Text("Map")
                }
            number3()
                 .tabItem {
                     Image(systemName: "sun.max")
                     Text("Warm")
                 }
            Number4()
                 .tabItem {
                     Image(systemName: "sun.max")
                     Text("Museums")
                 }
        }
    }
}

#Preview {
    ContentView()
}

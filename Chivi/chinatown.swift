//
//  chinatown.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/15/23.
//

import SwiftUI

struct chinatown: View {
    var body: some View {
        VStack{
            Text("In this route you will see")
            HStack{
                NavigationLink(destination: ChinatownGate()) {
                    Text("Chinatown Gate")

                }
                
                Button("Go", action:{
                    let latitude = 41.852610
                    let longitude = -87.632170
                    let url = URL(string: "maps://?saddr=&daddr=\(latitude),\(longitude)")
                    if UIApplication.shared.canOpenURL(url!) {
                        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
                    }
                }).foregroundColor(.green)
                //this is the end of the button
            }// end of chinatown Gate
            HStack{
                NavigationLink(destination: Ninedragons()) {
                    Text("Nine Dragons wall")

                }
                Button("Go", action:{
                    let latitude = 41.853067
                    let longitude = -87.631430
                    let url = URL(string: "maps://?saddr=&daddr=\(latitude),\(longitude)")
                    if UIApplication.shared.canOpenURL(url!) {
                        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
                    }
                }).foregroundColor(.green)
                //this is the end of the button
            }// end of chinatown Gate
            
        }
    }
}

#Preview {
    chinatown()
}

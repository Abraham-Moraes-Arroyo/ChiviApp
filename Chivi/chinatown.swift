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
            List{
                HStack{
                    Image("chinatownmid")
                        .resizable()
                        .frame(width: 50, height: 50)
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
                    Image("ninedragonmid")
                        .resizable()
                        .frame(width: 50, height: 50)
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
                
                
                
                HStack{
                    Image("chinazodiac")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: Ninedragons()) {
                        Text("Chinatown Square Zodiacs")
                        
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
                
                
                
                HStack{
                    Image("beapla")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: Ninedragons()) {
                        Text("You Are Beatiful Plaza")
                        
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
                
                
                
                HStack{
                    Image("chinamu")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: Ninedragons()) {
                        Text("Chinese American Museum of Chicago")
                        
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
}

#Preview {
    chinatown()
}

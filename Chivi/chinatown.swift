//
//  chinatown.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/15/23.
//

import SwiftUI
import Foundation

struct Chinatowns {
    @State var isFavorite: Bool
}



struct chinatown: View {
    
    //Here is where I am going to have the favorite variable where we will then recall the favorites in a different screen

    let coolRestaurant:Chinatowns = Chinatowns(isFavorite:true)
    
    var body: some View {
        
        
        
        
        
        VStack{
            Text("In this route you will see")
                .fontWeight(.heavy)
            List{
                HStack{
                    if (coolRestaurant.isFavorite){
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                    }
                   

                    Image("chinatownmid")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: ChinatownGate()) {
                        Text("Chinatown Gate")
                        
                    }
                    HStack{
                        Button("Go", action:{
                            let latitude = 41.852610
                            let longitude = -87.632170
                            let url = URL(string: "maps://?saddr=&daddr=\(latitude),\(longitude)")
                            if UIApplication.shared.canOpenURL(url!) {
                                UIApplication.shared.open(url!, options: [:], completionHandler: nil)
                            }
                        }).foregroundColor(.green)
                    }
                    
                    //this is the end of the button
                }// end of chinatown Gate
                
                
                HStack{
                    Image("ninedragonmid")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: Ninedragons()) {
                        Text("Nine Dragons wall")
                        
                    }
                    HStack{
                    Button("Go", action:{
                        let latitude = 41.853067
                        let longitude = -87.631430
                        let url = URL(string: "maps://?saddr=&daddr=\(latitude),\(longitude)")
                        if UIApplication.shared.canOpenURL(url!) {
                            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
                        }
                    }).foregroundColor(.green)
                    //this is the end of the button
                }
                }// end of chinatown Gate
                
                
                
                HStack{
                    Image("chinazodiac")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: Ninedragons()) {
                        Text("Chinatown Square Zodiacs")
                        
                    }
                    HStack{
                        Button("Go", action:{
                            let latitude = 41.853067
                            let longitude = -87.631430
                            let url = URL(string: "maps://?saddr=&daddr=\(latitude),\(longitude)")
                            if UIApplication.shared.canOpenURL(url!) {
                                UIApplication.shared.open(url!, options: [:], completionHandler: nil)
                            }
                        }).foregroundColor(.green)
                        //this is the end of the button
                    }
                }// end of chinatown Gate
                
                
                
                HStack{
                    Image("beapla")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: Ninedragons()) {
                        Text("You Are Beatiful Plaza")
                        
                    }
                    HStack{
                        Button("Go", action:{
                            let latitude = 41.853067
                            let longitude = -87.631430
                            let url = URL(string: "maps://?saddr=&daddr=\(latitude),\(longitude)")
                            if UIApplication.shared.canOpenURL(url!) {
                                UIApplication.shared.open(url!, options: [:], completionHandler: nil)
                            }
                        }).foregroundColor(.green)
                        //this is the end of the button
                    }
                }// end of chinatown Gate
                
                
                
                HStack{
                    Image("chinamu")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: Ninedragons()) {
                        Text("Chinese American Museum of Chicago")
                        
                    }
                    HStack{
                        Button("Go", action:{
                            let latitude = 41.853067
                            let longitude = -87.631430
                            let url = URL(string: "maps://?saddr=&daddr=\(latitude),\(longitude)")
                            if UIApplication.shared.canOpenURL(url!) {
                                UIApplication.shared.open(url!, options: [:], completionHandler: nil)
                            }
                        }).foregroundColor(.green)
                        //this is the end of the button
                    }
                }// end of chinatown Gate
                
                
            }
        }
    }
}

#Preview {
    chinatown()
}

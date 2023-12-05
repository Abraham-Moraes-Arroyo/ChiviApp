//
//  mythicalblueline.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/24/23.
//

import SwiftUI

struct mythicalblueline: View {
    var body: some View {
        
        
        VStack{
            Text("In this route you will see")
                .fontWeight(.heavy)
            List{
                HStack{
//                    if (coolRestaurant.isFavorite){
//                        Image(systemName: "star.fill")
//                            .foregroundStyle(.yellow)
//                    }
                   

                    Image("picaso")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: picaso()) {
                        Text("The Picaso")
                        
                    }
               
                    
                    //this is the end of the button
                }// end of chinatown Gate
                
                
                HStack{
                    Image("eternalFlame")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: eternalf()) {
                        Text("Eternal Flame")
                        
                    }
                
                }// end of chinatown Gate
                
                
        //Dec 5 10:34am
                HStack{
                    Image("standingb")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: standingb()) {
                        Text("Monument With Standing Beast")
                        
                    }
                 
                }// end of chinatown Gate
                HStack{
                    Image("cf")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: standingb()) {
                        Text("Calders Flamingo")
                        
                    }
                 
                }// end of chinatown Gate
                
                
                
                
       
                
                
                
            }
        }
    }
}

#Preview {
    mythicalblueline()
}

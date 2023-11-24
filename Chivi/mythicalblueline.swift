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
                    NavigationLink(destination: ChinatownGate()) {
                        Text("The Picaso")
                        
                    }
               
                    
                    //this is the end of the button
                }// end of chinatown Gate
                
                
                HStack{
                    Image("ninedragonmid")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: Ninedragons()) {
                        Text("Eternal Flame")
                        
                    }
                
                }// end of chinatown Gate
                
                
                
                HStack{
                    Image("chinazodiac")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: squarezodiacs()) {
                        Text("Monument With Standing Beast")
                        
                    }
                 
                }// end of chinatown Gate
                
                
                
       
                
                
                
            }
        }
    }
}

#Preview {
    mythicalblueline()
}

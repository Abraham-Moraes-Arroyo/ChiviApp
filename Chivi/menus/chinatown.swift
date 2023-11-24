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
               
                    
                    //this is the end of the button
                }// end of chinatown Gate
                
                
                HStack{
                    Image("ninedragonmid")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: Ninedragons()) {
                        Text("Nine Dragons wall")
                        
                    }
                
                }// end of chinatown Gate
                
                
                
                HStack{
                    Image("chinazodiac")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: squarezodiacs()) {
                        Text("Chinatown Square Zodiacs")
                        
                    }
                 
                }// end of chinatown Gate
                
                
                
                HStack{
                    Image("beapla")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: uareb()) {
                        Text("You Are Beatiful Plaza")
                        
                    }
                  
                }// end of chinatown Gate
                
                
                
                HStack{
                    Image("chinamu")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: chinesemuseum()) {
                        Text("Chinese American Museum of Chicago")
                        
                    }
                   
                }// end of chinatown Gate
                
                
            }
        }
    }
}

#Preview {
    chinatown()
}

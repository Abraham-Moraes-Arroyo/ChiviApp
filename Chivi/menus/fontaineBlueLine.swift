//
//  fontaineBlueLine.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/25/23.
//

import SwiftUI

struct fontaineBlueLine: View {
    var body: some View {
        VStack{
            Text("In this route you will see")
                .fontWeight(.heavy)
            //            HStack{
            //                if (coolRestaurant.isFavorite){
            //                    Image(systemName: "star.fill")
            //                        .foregroundStyle(.yellow)
            //                }
            List{
                
                HStack{
                    Image("polonia")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: polonia()) {
                        Text("Polonia Triangle")
                        
                    }
                }
                
                HStack{
                    Image("nicholasj")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: nicholasjfountain()) {
                        Text("Nicholas J Melas Centennial Fountain")
                        
                    }
                }
                
                HStack{
                    Image("crown")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: crownfountain()) {
                        Text("Crown Fountain")
                        
                    }
                }
                HStack{
                    Image("fountaingreat")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: crownfountain()) {
                        Text("Fountain Of The Great Lakes")
                        
                    }
                }
                
                
            }// this is the end of list
        }
    }
}

#Preview {
    fontaineBlueLine()
}

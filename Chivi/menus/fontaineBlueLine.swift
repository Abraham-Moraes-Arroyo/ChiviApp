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
                HStack{
                    Image("eaglef")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: eaglefountain()) {
                        Text("Eagle Fountains")
                        
                    }
                }
                HStack{
                    Image("eightstreet")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: eightstreet()) {
                        Text("8th Street Fountian")
                        
                    }
                }
                HStack{
                    Image("josephf")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: josephf()) {
                        Text("Joseph Rosenberg Fountain")
                        
                    }
                }
                
                HStack{
                    Image("fisherb")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: fisherb()) {
                        Text("Fisher Boy")
                        
                    }
                }
                HStack{
                    Image("craneg")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: craneg()) {
                        Text("Crane Girl")
                        
                    }
                }
                HStack{
                    Image("claranceb")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: claranceb()) {
                        Text("Clarance F Buckingham Fountain")
                        
                    }
                }
                HStack{
                    Image("doveg")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: doveg()) {
                        Text("Dove Girl")
                        
                    }
                }
                HStack{
                    Image("turtleb")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: turtleb()) {
                        Text("Turtle Boy")
                        
                    }
                }


            }// this is the end of list
        }
    }
}

#Preview {
    fontaineBlueLine()
}

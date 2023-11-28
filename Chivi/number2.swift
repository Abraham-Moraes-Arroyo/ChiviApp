//
// number2.swift
// Chivi
//
// Created by Abraham Morales Arroyo on 10/21/23.
// This is the map screen
import SwiftUI



struct number2: View {
    var body: some View {
        NavigationView{
            
            VStack{
                Text("Getting Around")
                    .offset(y:-100)
                    .font(.title)

                VStack{
                    // here is where the hyperlinks to the different screens are going to be
                    NavigationLink("Purchasing a Ventra Card", destination: purchasing())
                        .offset(y:-60)

                    
                    
                    NavigationLink("Purchasing a Pass", destination: purchasingp())
                        .offset(y:-30)

                }
                Text("Different Forms Of A Ventra Card")
                    .foregroundStyle(.secondary)

                HStack{
                    // here is where the images are going to be
                    Image("ventra")
                        .resizable()
                        .frame(width: 300, height: 300)
                
                }
            }
            
        }
        
    }
}
    
#Preview {
  number2()
}

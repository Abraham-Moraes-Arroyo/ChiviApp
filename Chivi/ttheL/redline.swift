//
//  redline.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 12/13/23.
//

import SwiftUI

struct redline: View {
    var body: some View {
     
       

           ScrollView{
              
               VStack{

                  Image("redline2")
                       .scaledToFit()
                       .frame(height: 350)
                   
                   Image("redline")
                       .resizable()
                       .scaledToFit()
                       .clipShape(Circle())
                       .overlay {
                           Circle().stroke(.white, lineWidth: 4)
                       }
                       .shadow(radius: 9)
                       .offset(y: -300)
                       .padding(.bottom, -130)
                       .frame(height:400)
                   
                   
                   VStack(alignment: .leading) {
                       Text("Chinatown Gate")
                           .font(.title)
                       
                       
                       HStack {
                           Text("2206 S Wentworth Ave, Chicago, IL 60616")
                           Spacer()
                       }
                       .font(.subheadline)
                       .foregroundStyle(.secondary)
                       
                       
                       Divider()
                       
                       
                       Text("About  ")
                           .font(.title2)
//    https://www.chicagochinatown.org/chinatown-landmark#&gid=1544418331&pid=1
                       Text("The four large Chinese characters near the top of the gate translate into 'the world belongs to the commonwealth', which was a famous saying in the early part of the 1900's and reflects the spirit and determination of the Chinese people.")
                       Text("")

                   }
                   .offset(y:-340)
                   .padding()
                   
               }
               
           }
       }
    }


#Preview {
    redline()
}

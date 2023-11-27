//
//  eaglefountain.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/25/23.
//

import SwiftUI
import MapKit

struct eaglefountain: View {
    var body: some View {
        let tower = CLLocationCoordinate2D(
            latitude: 41.876435,
            longitude: -87.623879)
        
        
        ScrollView{
            
            VStack{
                
                
                
                Map(){
                    Marker ("Eagle Fountains", systemImage: "pin", coordinate:
                                tower)
                    .tint (.red)
                    
                }
                .frame(height: 350)
                
                Image("eaglef")
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
                    Spacer()
                    Text(" ")
                    Text(" ")

                    Text("Eagle Fountains")
                        .font(.title)
                    
                    
                    HStack {
                        Text("E Congress Plaza Dr, Chicago, IL 60605")
                        Spacer()
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    
                    Divider()
                    
                    
                    Text("About  ")
                        .font(.title2)
//https://en.wikipedia.org/wiki/Fountain_of_the_Great_Lakes
                    
                    Text("Frederick C. Hibbard created the sculptures in 1931, as the South Park Commissioners were completing Congress Plaza, the elegant gateway into Grant Park and the lakefront.")
                    Text("")
                    Button("Go", action:{
                        let latitude = 41.876435
                        let longitude = -87.623879
                        let url = URL(string: "maps://?saddr=&daddr=\(latitude),\(longitude)")
                        if UIApplication.shared.canOpenURL(url!) {
                            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
                        }
                    }).foregroundColor(.green)
                        .font(.title)
                    
//                    41.97579° N, 87.69850° W
                }
                .offset(y:-340)
                .padding()
                
            }
            
        }
    }
}

#Preview {
    eaglefountain()
}

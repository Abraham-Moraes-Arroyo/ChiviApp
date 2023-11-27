//
//  josephf.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/25/23.
//

import SwiftUI
import MapKit

struct josephf: View {
    var body: some View {
        let tower = CLLocationCoordinate2D(
            latitude: 41.86868,
            longitude: -87.62379)
        
        
        ScrollView{
            
            VStack{
                
                
                
                Map(){
                    Marker ("Jospeh Rosenberg Fountain", systemImage: "pin", coordinate:
                                tower)
                    .tint (.red)
                    
                }
                .frame(height: 350)
                
                Image("josephf")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(.white, lineWidth: 4)
                    }
                    .shadow(radius: 9)
                    .offset(y: -330)
                    .padding(.bottom, -130)
                    .frame(height:400)
                
                
                VStack(alignment: .leading) {
                    Spacer()
                    Text("Joseph Rosenberg Fountain")
                        .font(.title)
                    
                    
                    HStack {
                        Text("Rosenberg Fountain, Chicago, IL 60605")
                        Spacer()
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    
                    Divider()
                    
                    
                    Text("About  ")
                        .font(.title2)
//https://www.chicagoparkdistrict.com/parks-facilities/joseph-rosenberg-fountain
                    
                    Text("Joseph Rosenberg (1848–1891) left a bequest for a fountain in Chicago “to provide the thirsty with a drink.” Growing up in Chicago and working as a newsboy, Rosenberg could never convince local merchants to spare him some water.  ")
                    Text("")
                    Button("Go", action:{
                        let latitude = 41.86868
                        let longitude = -87.62379
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
    josephf()
}

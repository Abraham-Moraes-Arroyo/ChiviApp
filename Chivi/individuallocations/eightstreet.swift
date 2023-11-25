//
//  eightstreet.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/25/23.
//

import SwiftUI
import MapKit

struct eightstreet: View {
    var body: some View {
        let tower = CLLocationCoordinate2D(
            latitude: 41.87188,
            longitude: -87.62332)
        
        
        ScrollView{
            
            VStack{
                
                
                
                Map(){
                    Marker ("8th Street Fountain", systemImage: "pin", coordinate:
                                tower)
                    .tint (.red)
                    
                }
                .frame(height: 350)
                
                Image("eightstreet")
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
                    Text("8th Street Fountain")
                        .font(.title)
                    
                    
                    HStack {
                        Text("McCormick Place Busway, Chicago, IL 60605")
                        Spacer()
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    
                    Divider()
                    
                    
                    Text("About  ")
                        .font(.title2)
//https://www.chicagoparkdistrict.com/parks-facilities/8th-street-fountain
                    
                    Text("Besides the monumental Clarence Buckingham Memorial Fountain, the 8th Street Fountain, which was also constructed in 1927, is the last of Bennett’s original fountains for Grant Park.")
                    Text("")
                    Button("Go", action:{
                        let latitude = 41.87188
                        let longitude = -87.62332
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
    eightstreet()
}

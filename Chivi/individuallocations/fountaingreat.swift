//
//  fountaingreat.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/25/23.
//

import SwiftUI
import MapKit

struct fountaingreat: View {
    var body: some View {
        let tower = CLLocationCoordinate2D(
            latitude: 41.878801,
            longitude: -87.623711)
        
        
        ScrollView{
            
            VStack{
                
                
                
                Map(){
                    Marker ("Fountain of the Great Lakes", systemImage: "pin", coordinate:
                                tower)
                    .tint (.red)
                    
                }
                .frame(height: 350)
                
                Image("fountaingreat")
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
                    Text("Fountain of the Great Lakes")
                        .font(.title)
                    
                    
                    HStack {
                        Text("E Jackson Blvd, Chicago, IL 60603")
                        Spacer()
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    
                    Divider()
                    
                    
                    Text("About  ")
                        .font(.title2)
//https://en.wikipedia.org/wiki/Fountain_of_the_Great_Lakes
                    
                    Text("The fountain was originally installed on an elevated platform facing south where it remained until 1963, when it was moved next to the Morton Wing addition facing west. In its original location it was visible from the Jackson and Michigan Avenue intersection once known as 'route center' to the south")
                    Text("")
                    Button("Go", action:{
                        let latitude = 41.878801
                        let longitude = -87.623711
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
    fountaingreat()
}

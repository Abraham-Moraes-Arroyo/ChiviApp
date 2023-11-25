//
//  claranceb.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/25/23.
//

import SwiftUI
import MapKit

struct claranceb: View {
    var body: some View {
        let tower = CLLocationCoordinate2D(
            latitude: 41.87580,
            longitude: -87.61893)
        
        
        ScrollView{
            
            VStack{
                
                
                
                Map(){
                    Marker ("Clarance F Buckingham", systemImage: "pin", coordinate:
                                tower)
                    .tint (.red)
                    
                }
                .frame(height: 350)
                
                Image("claranceb")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(.white, lineWidth: 4)
                    }
                    .shadow(radius: 9)
                    .offset(y: -350)
                    .padding(.bottom, -100)
                    .frame(height:300)
                
                
                VStack(alignment: .leading) {
                    Text("Clarance F. Buckingham ")
                        .font(.title)
                    
                    
                    HStack {
                        Text("301 S Columbus Dr, Chicago, IL 60605")
                        Spacer()
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    
                    Divider()
                    
                    
                    Text("About  ")
                        .font(.title2)
//https://www.chicagoparkdistrict.com/parks-facilities/clarence-f-buckingham-memorial-fountain
                    
                    Text("The Clarence Buckingham Memorial Fountain, one of the largest in the world, is located at Columbus Drive (301 East) and Congress Parkway (500 South) in Grant Park and runs from 8 a.m. to 11:00 p.m. daily, typically from early May through mid-October, depending on weather.  Display times are subject to change during special events in Grant Park.")
                    Text("")
                    Button("Go", action:{
                        let latitude = 41.87580
                        let longitude = -87.61893
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
    claranceb()
}

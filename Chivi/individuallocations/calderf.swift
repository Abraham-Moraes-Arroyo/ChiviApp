//
//  calderf.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/24/23.
//

import SwiftUI
import MapKit
//41.878793, -87.629699

struct calderf: View {
    let tower = CLLocationCoordinate2D(
        latitude: 41.878793,
    longitude:  -87.629699)
    var body: some View {
        ScrollView{
           
            VStack{
   

                Map(){
                    Marker ("Calder's Flamingo", systemImage: "pin", coordinate:
                    tower)
                    .tint (.red)
                    
                }
                    .frame(height: 250)
                
                Image("cf")
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
                    Text("Calder's Flamingo")
                        .font(.title)
                    
                    
                    HStack {
                        Text("210 S Dearborn St, Chicago, IL 60604")
                        Spacer()
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    
                    Divider()
                    
                    
                    Text("About  ")
                        .font(.title2)
//    https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwilv9GLhN2CAxXlM0QIHUOnBYwQmhN6BAhmEAI&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FFlamingo_(sculpture)&usg=AOvVaw3jAo3EcxFPH6qxaY0aDIE4&opi=89978449
                    Text("Flamingo, created by noted American artist Alexander Calder, is a 53-foot-tall stabile located in the Federal Plaza in front of the Kluczynski Federal Building in Chicago, Illinois, United States. ")
                    Text("")
                    Button("Go", action:{
                        let latitude = 41.878793
                        let longitude = -87.629699

                        let url = URL(string: "maps://?saddr=&daddr=\(latitude),\(longitude)")
                        if UIApplication.shared.canOpenURL(url!) {
                            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
                        }
                    }).foregroundColor(.green)
                        .font(.title)


                }
                .offset(y:-340)
                .padding()
                
            }
            
        }
    }
}

#Preview {
    calderf()
}

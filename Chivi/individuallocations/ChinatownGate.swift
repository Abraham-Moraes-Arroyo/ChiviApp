//
//  ChinatownGate.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/15/23.
//

import SwiftUI
import MapKit

struct ChinatownGate: View {
//    41.852652, -87.632226
    var body: some View {
        let tower = CLLocationCoordinate2D(
            latitude: 41.852652,
        longitude: -87.632226)
        

            ScrollView{
               
                VStack{

                                    

                    Map(){
                        Marker ("Chinatown Gate", systemImage: "pin", coordinate:
                        tower)
                        .tint (.red)
                        
                    }
                        .frame(height: 350)
                    
                    Image("chinatownmid")
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
                        Button("Go", action:{
                            let latitude = 41.852652
                            let longitude = -87.632226
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
    ChinatownGate()
}

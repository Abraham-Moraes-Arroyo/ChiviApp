//
//  eternalf.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/24/23.
//

import SwiftUI
import MapKit

struct eternalf: View {
    let tower = CLLocationCoordinate2D( latitude: 41.883955,
    longitude: -87.629853)
    var body: some View {
        ScrollView{
           
            VStack{

                                

                Map(){
                    Marker ("Eternal Flame ", systemImage: "pin", coordinate:
                    tower)
                    .tint (.red)
                    
                }
                    .frame(height: 350)
                
                Image("eternalFlame")
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
                    Text("Eternal Flame")
                        .font(.title)
                    
                    
                    HStack {
                        Text("Eternal Flame Memorial, Chicago, IL 60602")
                        Spacer()
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    
                    Divider()
//                    41.883955, -87.629853
                    
                    
                    Text("About  ")
                        .font(.title2)
//https://www.roadsideamerica.com/story/36289
                    Text("The Eternal Flame was lit on August 22, 1972, dedicated by Mayor Richard J. Daley in Civic Center Plaza. The plaque reads: 'Eternal Flame in memory of the men and women who have served in our armed forces from the Revolutionary War to present. Army, Marine, Navy, Air Force, Coast Guard, National Guard, Reserves and Merchant Marines.'")
                    Text("")
                    Button("Go", action:{
                        let latitude = 41.883955
                        let longitude = -87.629853
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
    eternalf()
}

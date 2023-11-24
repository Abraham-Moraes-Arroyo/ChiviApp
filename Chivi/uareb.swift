//
//  uareb.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/24/23.
//

import SwiftUI
import MapKit

struct uareb: View {
    var body: some View {
        let tower = CLLocationCoordinate2D(
            latitude: 41.827090,
        longitude: -87.623140)
        

            ScrollView{
               
                VStack{

                                    

                    Map(){
                        Marker ("You are Beatiful Plaza", systemImage: "pin", coordinate:
                        tower)
                        .tint (.red)
                        
                    }
                        .frame(height: 250)
                    
                    Image("youarebe")
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
                        Text("You are Beatiful Plaza")
                            .font(.title)
                        
                        
                        HStack {
                            Text("You Are Beautiful Plaza, Chicago, IL 60616")
                            Spacer()
                        }
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                        
                        
                        Divider()
                        
                        
                        Text("About  ")
                            .font(.title2)
//    https://caffeinatedexcursions.com/chicago-chinatown-a-visitors-guide/
                        Text("This small plaza is aptly named for a bilingual sign on one of its walls that says “you are beautiful” in both English and traditional Chinese. ")
                        Text("")
                        Button("Go", action:{
                            let latitude = 41.827090
                            let longitude = -87.623140
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
    uareb()
}

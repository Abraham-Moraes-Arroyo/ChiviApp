//
//  crownfountain.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/25/23.
//

import SwiftUI
import MapKit

struct crownfountain: View {
    var body: some View {
        let tower = CLLocationCoordinate2D(
            latitude: 41.881719,
            longitude: -87.623746)
        
        
        ScrollView{
            
            VStack{
                
                
                
                Map(){
                    Marker ("Crown Fountain", systemImage: "pin", coordinate:
                                tower)
                    .tint (.red)
                    
                }
                .frame(height: 350)
                
                Image("crown")
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
                    Text("Crown Fountain ")
                        .font(.title)
                    
                    
                    HStack {
                        Text("Chicago, IL 60625")
                        Spacer()
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    
                    Divider()
                    
                    
                    Text("About  ")
                        .font(.title2)
//https://www.chicago.gov/city/en/depts/dca/supp_info/chicago_s_publicartcrownfountaininmillenniumpark.html
                    Text("The fountain consists of two 50-foot glass block towers at each end of a shallow reflecting pool. The towers project video images from a broad social spectrum of Chicago citizens, a reference to the traditional use of gargoyles in fountains, where faces of mythological beings were sculpted with open mouths to allow water, a symbol of life, to flow out.")
                    Text("")
                    Button("Go", action:{
                        let latitude = 41.881719
                        let longitude = -87.623746
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
    crownfountain()
}

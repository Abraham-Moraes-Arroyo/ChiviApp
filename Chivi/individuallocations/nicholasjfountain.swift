//
//  nicholasjfountain.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/25/23.
//

import SwiftUI
import MapKit

struct nicholasjfountain: View {
    var body: some View {
        let tower = CLLocationCoordinate2D(
            latitude: 41.889181,
        longitude: -87.618078)
        

            ScrollView{
               
                VStack{

                                    

                    Map(){
                        Marker ("Nicholas J Melas Centennial Fountain", systemImage: "pin", coordinate:
                        tower)
                        .tint (.red)
                        
                    }
                        .frame(height: 250)
                    
                    Image("nicholasj")
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
                        Text("Nicholas J Melas Centennial Fountain")
                            .font(.title)
                        
                        
                        HStack {
                            Text("400 N McClurg Ct, Chicago, IL 60611")
                            Spacer()
                        }
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                        
                        
                        Divider()
                        
                        
                        Text("About  ")
                            .font(.title2)
                        
//https://www.chicago.gov/city/en/depts/dca/supp_info/chicago_s_publicartcrownfountaininmillenniumpark.html
                        
                        Text(" It was dedicated in 1989, to celebrate the 100th anniversary of the Metropolitan Water Reclamation District of Greater Chicago, perhaps best known for its major achievement in reversing the flow of the Chicago River in 1900.")
                        Text("")
                        Button("Go", action:{
                            let latitude = 41.889181
                            let longitude = -87.618078
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
    nicholasjfountain()
}

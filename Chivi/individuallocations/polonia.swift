//
//  polonia.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/25/23.
//

import SwiftUI
import MapKit


struct polonia: View {
    var body: some View {
        let tower = CLLocationCoordinate2D(
            latitude: 41.903559,
        longitude: -87.667170)
        

            ScrollView{
               
                VStack{

                                    

                    Map(){
                        Marker ("Polonia Triangle", systemImage: "pin", coordinate:
                        tower)
                        .tint (.red)
                        
                    }
                        .frame(height: 250)
                    
                    Image("polonia")
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
                        Text("Polonia Triangle")
                            .font(.title)
                        
                        
                        HStack {
                            Text("1204 N Milwaukee Ave, Chicago, IL 60622")
                            Spacer()
                        }
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                        
                        
                        Divider()
                        
                        
                        Text("About  ")
                            .font(.title2)
// 1204 N Milwaukee Ave, Chicago, IL 60622
                        Text("The Triangle is bounded by Division Street on the south, Ashland Avenue on the west, and Milwaukee Avenue on the northeast.Organisations located within its vicinity include the Polish National Alliance to the Polish Daily News.")
                        Text("")
                        Button("Go", action:{
                            let latitude = 41.903559
                            let longitude = -87.667170
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
    polonia()
}

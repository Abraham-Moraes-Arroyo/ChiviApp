//
//  Ninedragons.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/15/23.
//

import SwiftUI
import MapKit

//41.853067, -87.631430
struct Ninedragons: View {
    let tower = CLLocationCoordinate2D( latitude: 41.853067,
    longitude: -87.631430)
    
    var body: some View {
        ScrollView{
           
            VStack{

                                

                Map(){
                    Marker ("Nine Dragons", systemImage: "pin", coordinate:
                    tower)
                    .tint (.red)
                    
                }
                    .frame(height: 350)
                
                Image("ninedragonmid")
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
                    Text("Nine Dragons")
                        .font(.title)
                    
                    
                    HStack {
                        Text("158 W. Cermark Rd, Chicago, IL, 60616, USA ")
                        Spacer()
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    
                    Divider()
                    
                    
                    Text("About  ")
                        .font(.title2)
//                    https://www.hmdb.org/m.asp?m=81418
                    Text("Ancient Chinese believed 9 to be the most prestigious number and dragon the soul of all things of creation. The Chinese people consider Dragon as the emblem of Chinese national spirit.")
                    Text("")
                    Button("Go", action:{
                        let latitude = 41.853067
                        let longitude = -87.631430
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
    Ninedragons()
}

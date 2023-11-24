//
//  squarezodiacs.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/24/23.
//

import SwiftUI
import MapKit


struct squarezodiacs: View {
    var body: some View {
        let tower = CLLocationCoordinate2D(
            latitude: 41.854540,
        longitude: -87.632260)
        

            ScrollView{
               
                VStack{

                                    

                    Map(){
                        Marker ("Chinatown Square Zodiacs", systemImage: "pin", coordinate:
                        tower)
                        .tint (.red)
                        
                    }
                        .frame(height: 250)
                    
                    Image("chinazodiac")
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
                        Text("Chinatown Square Zodiacs")
                            .font(.title)
                        
                        
                        HStack {
                            Text("2100 S Archer Ave, Chicago, IL 60616")
                            Spacer()
                        }
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                        
                        
                        Divider()
                        
                        
                        Text("About  ")
                            .font(.title2)
//    http://chicagopublicart.blogspot.com/2013/09/chinatown-square-zodiacs.html
                        Text("Chinatown Square is the reclamation of 45 acres form a former railroad yard. Constructed in 1993, it hosts a two-tier outdoor retail and commercial space with a variety of restaurants and shops. Around the open square, twelve bronze sculptures of animals of the Chinese zodiac sit upon individual pedestals. ")
                        Text("")
                        Button("Go", action:{
                            let latitude = 41.854540
                            let longitude = -87.632260
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
    squarezodiacs()
}

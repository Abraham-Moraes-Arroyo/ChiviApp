//
//  standingb.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/24/23.
//

import SwiftUI
import MapKit


struct standingb: View {
    var body: some View {
        let tower = CLLocationCoordinate2D(
            latitude: 41.884737,
        longitude: -87.631194)
        

            ScrollView{
               
                VStack{
       

                    Map(){
                        Marker ("Monument with standing Beast", systemImage: "pin", coordinate:
                        tower)
                        .tint (.red)
                        
                    }
                        .frame(height: 250)
                    
                    Image("standingb")
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
                        Text("Monumnet With Standing Beast")
                            .font(.title)
                        
                        
                        HStack {
                            Text("Monument with Standing Beast, 100 W Randolph St, Chicago, IL 60601")
                            Spacer()
                        }
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                        
                        
                        Divider()
                        
                        
                        Text("About  ")
                            .font(.title2)
//    https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwjc8JfZ99yCAxUUl4kEHT6hDlkQmhN6BAhgEAI&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FMonument_with_Standing_Beast&usg=AOvVaw1QYDDDwz_wQ4uD8OfRtZlt&opi=89978449
                        Text("Monument with Standing Beast is a sculpture by Jean Dubuffet in front of the Helmut Jahn designed James R. Thompson Center in the Loop community area of Chicago, Illinois. Its location is across the street from Chicago City Hall to the South and diagonal across the street from the Daley Center to the southeast. ")
                        Text("")
                        Button("Go", action:{
                            let latitude = 41.884737
                            let longitude = -87.631194
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
    standingb()
}

//
//  chinesemuseum.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/24/23.
//

import SwiftUI
import MapKit


struct chinesemuseum: View {
    var body: some View {
        let tower = CLLocationCoordinate2D(
            latitude: 41.827090,
        longitude: -87.623140)
        

            ScrollView{
               
                VStack{

                                    

                    Map(){
                        Marker ("Chinese American Museum of Chicago", systemImage: "pin", coordinate:
                        tower)
                        .tint (.red)
                        
                    }
                        .frame(height: 250)
                    
                    Image("chinamu")
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
                        Text("Chinese American Museum of Chicago")
                            .font(.title)
                        
                        
                        HStack {
                            Text("238 W 23rd St, Chicago, IL 60616")
                            Spacer()
                        }
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                        
                        
                        Divider()
                        
                        
                        Text("About  ")
                            .font(.title2)
// https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwiAirTb8dyCAxVtv4kEHUIKCL4QmhN6BAhfEAI&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FChinese_American_Museum_of_Chicago&usg=AOvVaw179K9sfO09QHjdTMmqmKKe&opi=89978449
                        Text("The Chinese American Museum of Chicago seeks to advance the appreciation of Chinese American culture through exhibitions, education, and research and to preserve the past, present, and future of Chinese Americans primarily in the American Midwest. The museum opened in 2005 in Chicago's Chinatown neighborhood.")
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
    chinesemuseum()
}

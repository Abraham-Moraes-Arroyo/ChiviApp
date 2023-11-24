//
//  berlinWin.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/24/23.
//

import SwiftUI
import MapKit


struct berlinWin: View {
    var body: some View {
        let tower = CLLocationCoordinate2D(
            latitude: 41.97579,
            longitude: -87.69850)
        
        
        ScrollView{
            
            VStack{
                
                
                
                Map(){
                    Marker ("Berlin Wall", systemImage: "pin", coordinate:
                                tower)
                    .tint (.red)
                    
                }
                .frame(height: 350)
                
                Image("berlin")
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
                    Text("Berlin Wall ")
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
                    //    https://en.wikipedia.org/wiki/Berlin_Wall_Monument_(Chicago)
                    Text("Segment of the Berlin Wall (1961–1989) dedicated by the City of Berlin to the citizens of Chicago as an expression of its gratitude for the invaluable assistance rendered by the United States of America in securing the safety and freedom of Berlin, in bringing down the Wall, and in supporting reunification of Germany and Berlin.")
                    Text("")
                    Button("Go", action:{
                        let latitude = 41.97579
                        let longitude = -87.69850
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
    berlinWin()
}

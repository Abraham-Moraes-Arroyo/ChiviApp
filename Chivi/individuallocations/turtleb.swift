//
//  turtleb.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/25/23.
//

import SwiftUI
import MapKit

struct turtleb: View {
    var body: some View {
        let tower = CLLocationCoordinate2D(
            latitude: 41.87712,
            longitude: -87.61928)
        
        
        ScrollView{
            
            VStack{
                
                
                
                Map(){
                    Marker ("Turtle Boy", systemImage: "pin", coordinate:
                                tower)
                    .tint (.red)
                    
                }
                .frame(height: 350)
                
                Image("turtleb")
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
                    Text("Turtle Boy ")
                        .font(.title)
                    
                    
                    HStack {
                        Text("Turtle Boy, Chicago, IL 60605")
                        Spacer()
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    
                    Divider()
                    
                    
                    Text("About  ")
                        .font(.title2)
//https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwiR0fOMz9-CAxW7j4kEHfWSB_kQFnoECBQQAQ&url=https%3A%2F%2Fwww.chicagoparkdistrict.com%2Fparks-facilities%2Ffountain-figures-artwork&usg=AOvVaw2JTZSLErXdCAcd8ameMVRm&opi=89978449
                    
                    Text("Crane Girl, Fisher Boy, Turtle Boy, and Dove Girl are four delicate-looking bronze figures—each standing in the center of its own circular fountain with the associated animal its feet. Crane Girl and Fisher Boy are north of the Clarence Buckingham Memorial Fountain while Turtle Boy and Dove Girl are to the south.")
                    Text("")
                    Button("Go", action:{
                        let latitude = 41.87712
                        let longitude = -87.61928
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
    turtleb()
}

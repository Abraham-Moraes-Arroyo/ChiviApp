//
//  picaso.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/24/23.
//

import SwiftUI
import MapKit
//41.883396, -87.629883

struct picaso: View {
    let tower = CLLocationCoordinate2D( latitude: 41.883396,
    longitude: -87.629883)
    
    var body: some View {
        ScrollView{
           
            VStack{

                                

                Map(){
                    Marker ("The Picaso ", systemImage: "pin", coordinate:
                    tower)
                    .tint (.red)
                    
                }
                    .frame(height: 350)
                
                Image("picaso")
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
                    Text("The Picaso ")
                        .font(.title)
                    
                    
                    HStack {
                        Text("The Picasso, 50 W Washington St, Chicago, IL 60602")
                        Spacer()
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    
                    Divider()
//                    41.883955, -87.629853
                    
                    
                    Text("About  ")
                        .font(.title2)
//https://www.chicago.gov/city/en/depts/dca/supp_info/chicago_s_publicartthepicassountitledsculpture.html
                    Text("Picasso worked on this commission for two years, combining and modifying sketches and motifs from some of his earlier works in the design of the sculpture. This resulted in a 42-inch tall maquette, or model, of the sculpture. Both the maquette and sketches of the sculpture may be seen today at the Art Institute of Chicago.")
                    Text("")
                    Button("Go", action:{
                        let latitude = 41.883396
                        let longitude = -87.629883
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
    picaso()
}

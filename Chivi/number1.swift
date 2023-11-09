//
//  number1.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 10/21/23.
//

import SwiftUI

struct number1: View {
    var body: some View {
        NavigationView{
            VStack{
                //            this is the title
                HStack{
                    Text("Chivi")
                }/*.offset(y: -350.0)*/
                .font(.system(size: 40))
                .foregroundColor(.purple)
                //        Here is where we are going to have the buttons to the different routes that the user can take
                //        This is for the red line line of Mulrals
                HStack{
                    Button("Red Line Mile of Murals", action:{
                        let latitude = 42.011610
                        let longitude = -87.665890
                        let url = URL(string: "maps://?saddr=&daddr=\(latitude),\(longitude)")
                        if UIApplication.shared.canOpenURL(url!) {
                            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
                        }
                    }).foregroundColor(.red)
                    
                    HStack{
                        NavigationLink(destination: redlineMile()) {
                            Text("Learn More")
                        }
                    }
                    
                    
                    
                }
                // this is for the brown line
                HStack{
                    Button("Brown Line Berlin Wall ", action:{
                        let latitude = 41.970710
                        let longitude = -87.699330
                        let url = URL(string: "maps://?saddr=&daddr=\(latitude),\(longitude)")
                        if UIApplication.shared.canOpenURL(url!) {
                            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
                        }
                    }).foregroundColor(.brown)
                    
                    HStack{
                        NavigationLink(destination: redlineMile()) {
                            Text("Learn More")
                        }
                    }
                    
                    
                    
                }
                HStack{
                    Button("Blue Line Picaso", action:{
                        let latitude = 41.883210
                        let longitude = -87.633870
                        let url = URL(string: "maps://?saddr=&daddr=\(latitude),\(longitude)")
                        if UIApplication.shared.canOpenURL(url!) {
                            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
                        }
                    }).foregroundColor(.blue)
                    
                    HStack{
                        NavigationLink(destination: bluelinepicaso()) {
                            Text("Learn More")
                        }
                    }
                    
                    
                    
                }
                
            }// end of Vstack
        } // end of navigation View
    }
}

#Preview {
    number1()
}

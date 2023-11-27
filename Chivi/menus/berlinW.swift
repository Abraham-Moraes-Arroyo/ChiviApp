//
//  berlinW.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/24/23.
//

import SwiftUI

struct berlinW: View {
    var body: some View {
        
        VStack{
            Text("In this route you will see")
                .fontWeight(.heavy)
            //            HStack{
            //                if (coolRestaurant.isFavorite){
            //                    Image(systemName: "star.fill")
            //                        .foregroundStyle(.yellow)
            //                }
            List{
                HStack{
                    
                    Image("berlin")
                        .resizable()
                        .frame(width: 50, height: 50)
                    NavigationLink(destination: ChinatownGate()) {
                        Text("Berlin Wall")
                        
                    }
//                    this is to send the user to place
//                    HStack{
//                        Button("Go", action:{
//                            let latitude = 41.852610
//                            let longitude = -87.632170
//                            let url = URL(string: "maps://?saddr=&daddr=\(latitude),\(longitude)")
//                            if UIApplication.shared.canOpenURL(url!) {
//                                UIApplication.shared.open(url!, options: [:], completionHandler: nil)
//                            }
//                        }).foregroundColor(.green)
//                    }
                    
                    //this is the end of the button
                }// end of chinatown Gate
            }
        }
    }
}

#Preview {
    berlinW()
}

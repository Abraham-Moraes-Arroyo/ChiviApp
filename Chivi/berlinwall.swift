//
//  berlinwall.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/3/23.
//

import SwiftUI

struct berlinwall: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("What you will See at the berlin wall")
                VStack{
                    Image("berlin")
                        .scaledToFit()
                    Text("it is said that the part of the wall that we are looking at was the side that faced West Germany ")    .multilineTextAlignment(.center)
                        .frame(width: 300)




                }
            }
            
            
        }
    }
    
}

#Preview {
    berlinwall()
}

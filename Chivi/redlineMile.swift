//
//  redlineMile.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/3/23.
//

import SwiftUI

struct redlineMile: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("What you will See at the MIle of Murals")
                VStack{
                    Image("mural1")
                        .scaledToFit()
                        .padding()
                    Image("mural2")
                        .scaledToFit()
                        .padding()
                    Image("mural3")
                        .scaledToFit()
                        .padding()
                    Image("mural4")


                }
            }
            
            
        }
    }
}

#Preview {
    redlineMile()
}

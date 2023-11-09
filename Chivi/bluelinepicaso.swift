//
//  bluelinepicaso.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/3/23.
//

import SwiftUI

struct bluelinepicaso: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("What you will See at the Picaso")
                VStack{
                    Image("picaso")
                        .scaledToFit()
                    Text("Located at the outside stop of Blue Line Washington. It is an actual Picaso you can see without having to wait long period of time and open 24/7 unless notified ")    .multilineTextAlignment(.center)
                        .frame(width: 300)




                }
            }
            
            
        }
    }
}

#Preview {
    bluelinepicaso()
}

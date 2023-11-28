//
//  purchasingp.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 11/25/23.
//

import SwiftUI

struct purchasingp: View {
    var body: some View {
        ScrollView{
            Text("Purchasing a Ventra pass")
            Text("Please follow the photos for instructions")
            Image("step1")
                .resizable()
                .frame(width: 200, height: 250)
                
            Image("step2")
                .resizable()
                .frame(width: 200, height: 250)
            Image("step3")
                .resizable()
                .frame(width: 200, height: 250)
            Image("step4")
                .resizable()
                .frame(width: 200, height: 250)
            Image("step5")
                .resizable()
                .frame(width: 200, height: 250)
            Image("step6")
                .resizable()
                .frame(width: 200, height: 250)
                
        }
    }
}

#Preview {
    purchasingp()
}

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
            VStack{
                Image("CHIVICROPPED")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .padding(.top,20)
                    .padding(.bottom,40)
                    .frame(width: 200, alignment: .center)
                //                    .background(Color(red: 0.1, green: 0.7, blue: 0.9))
//                    .cornerRadius(20)
                Text("Purchasing a Ventra pass")
                    .font(.title )
                    .padding()
                    .foregroundColor(.white)
                    .background(Color(red: 0.6, green: 0.4, blue: 1))
                    .cornerRadius(20)
                Text("Please follow the photos for instructions")
                
                    .padding()
                    .foregroundColor(.white)
                    .background(Color(red: 0.6, green: 0.4, blue: 1))
                    .cornerRadius(20)
                

                Image("step1")
                    .resizable()
                    .frame(width: 200, height: 250)
                    .cornerRadius(20)
                    .padding(10)
                    .background(Color(red: 0.8, green: 0.8, blue: 0.8))
                    .cornerRadius(20)
                
                Image("step2")
                    .resizable()
                    .frame(width: 200, height: 250)
                    .cornerRadius(20)
                    .padding(10)
                    .background(Color(red: 0.8, green: 0.8, blue: 0.8))
                    .cornerRadius(20)
                
                Image("step3")
                    .resizable()
                    .frame(width: 200, height: 250)
                    .cornerRadius(20)
                    .padding(10)
                    .background(Color(red: 0.8, green: 0.8, blue: 0.8))
                    .cornerRadius(20)
                
                Image("step4")
                    .resizable()
                    .frame(width: 200, height: 250)
                    .cornerRadius(20)
                    .padding(10)
                    .background(Color(red: 0.8, green: 0.8, blue: 0.8))
                    .cornerRadius(20)
                
                Image("step5")
                    .resizable()
                    .frame(width: 200, height: 250)
                    .cornerRadius(20)
                    .padding(10)
                    .background(Color(red: 0.8, green: 0.8, blue: 0.8))
                    .cornerRadius(20)
                
                Image("step6")
                    .resizable()
                    .frame(width: 200, height: 250)
                    .cornerRadius(20)
                    .padding(10)
                    .background(Color(red: 0.8, green: 0.8, blue: 0.8))
                    .cornerRadius(20)
            }
            
                
        }
    }
}

#Preview {
    purchasingp()
}

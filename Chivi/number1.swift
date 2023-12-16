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
            ScrollView{
                VStack(alignment: .center){
                    //            this is the title
                    VStack{
                        Image("chivi")
                            .resizable()
                            .aspectRatio(contentMode:.fit)
                            .frame(width: 300, height: 300)
                            .offset(y: -80)
                        Text("Gettting Started")
                            .font(.headline)
                            .offset(y: -150)
                        // what is the CTA navigationLink
                        NavigationLink(destination: whatIsCTA()) {
                            Text("What is the CTA?")
                                .foregroundColor(.white)
                                .font(.headline)
                                .background(
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(Color(red: 0.5, green: 0.3, blue: 1))
                                        .frame(width: 350, height: 60)
                                )
                        }
                        .offset(y: -100)
                        // what is the how to Use Chivi navigationLink
                        NavigationLink(destination: howToUseChivi()) {
                            Text("How to use Chivi?")
                                .foregroundColor(.white)
                                .font(.headline)
                                .background(
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(Color(red: 0.5, green: 0.3, blue: 1))
                                        .frame(width: 350, height: 60)
                                )
                        }
                        .offset(y: -50)
                    }
                    // end of VStack for the top of home screen
                    
                }
                
            }// end of Vstack
        } // end of navigation View
    }
}

#Preview {
    number1()
}

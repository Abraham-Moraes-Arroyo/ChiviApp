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
            VStack(alignment: .leading){
                //            this is the title
                
                    HStack{
                        Image("chivi")
                            .resizable()
                            .scaledToFit()
                        
                    }
                    
                    
                    
                    
                  
                    VStack{
                       Text("Getting Started")
                        Divider()

                            Text("Please make sure to check the second screen in order to see more details on how to get a ventra and purchase ventra passes. ")
                        
                        
                    }.offset(y:-100)
                    .offset(x:50)
                    .frame(width: 300)

                    .font(.title)
                    
                    
                    VStack{
                       
                }
                
               
                
            }// end of Vstack
        } // end of navigation View
    }
}

#Preview {
    number1()
}

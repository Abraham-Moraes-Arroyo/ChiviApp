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
                        
                        Text("The L")
                        List{
                            // here is where you are going to have different train lines.
                            // the reason why it is not dynamic because we don't expect for train lines to actually disapear overnight, or get created unlike the different tour stops
                            
                            HStack{
                              
                                Image("redline")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                NavigationLink(destination: redline()) {
                                    Text("Red Line")
                                    
                                }
                           
                                
                                //this is the end of the button
                            }// end of chinatown Gate
                            
                            
                        }// end of list
                        
                        
                        //move guides to the end and call it help 
                        
                       
                }
                
               
                
            }// end of Vstack
        } // end of navigation View
    }
}

#Preview {
    number1()
}

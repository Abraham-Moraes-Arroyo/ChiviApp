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
                        
                    }.offset(y: -30)
                    
                    
                    
                    
                    Divider()
                    Image("chinatownmid")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .overlay {
                            Circle().stroke(.white, lineWidth: 4)
                        }
                        .shadow(radius: 9)
                        .offset(y: -200)
                        .padding(.bottom, -130)
                        .frame(height:300)
                    
                    Text("Welcome Back!  Abraham")
                        .font(.title)
                        .offset(y:-160)
                        .offset(x:20)
                    
                    
                    Text("Continue where you left off")
                        .offset(y:-160)
                        .offset(x:30)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    HStack{
                        List{
                            HStack{
                                Image("chinatownmid")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                NavigationLink(destination: chinatown()) {
                                    Text("ChinaTown RedLine")
                                    
                                    
                                }
                            }// end of chinatown
                        }
                    }
                    .offset(y: -160)
                    
                    Text("Favorites")
                        .offset(y:-160)
                        .offset(x:30)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    VStack{
                        List{
                            HStack{
                                Image("chinatownmid")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                NavigationLink(destination: chinatown()) {
                                    Text("ChinaTown RedLine")
                                    
                                    
                                }
                            }// end of chinatown
                        
                    }
                }
                .offset(y: -160)
               
                
            }// end of Vstack
        } // end of navigation View
    }
}

#Preview {
    number1()
}

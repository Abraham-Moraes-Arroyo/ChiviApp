//
//  number3.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 10/21/23.
//

import SwiftUI
import MapKit

struct tours {
    @State var isFavorite: Bool
    
}



struct number3: View {

    let cooltour:tours = tours(isFavorite:true)
//    view builder
    
    @State private var ischecked: Bool = false
    
    // at the end you will be getting rid of the @ but keeping the var model .
    
    var body: some View {
        NavigationView{
  
            VStack(spacing: 0){
        
                Text("Tour De Chicago")
                    .foregroundColor(.white)
                    .frame( maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding(.top, 20)
                    .padding(.bottom, 20)
                    .background(Color(red: 0.5, green: 0.3, blue: 1))
                    
                List{

                    HStack{
                        Image("chinatownmid")
                            .resizable()
                            .frame(width: 50, height: 50)
                        NavigationLink(destination: dynamictours(tourId: "china-town-tour")) {
                            Text("ChinaTown RedLine")
                            
                            
                            
                        }
                    }
                    .listRowBackground(Color.red)
                    .foregroundColor(.white)

                    // end of chinatown
                    HStack{
                        Image("berlin")
                            .resizable()
                            .frame(width: 50, height: 50)
                        
                        
                        // here is where you need to change 
                        NavigationLink(destination: dynamictours(tourId: "berlinBrownLine")){
                            Text("BerlinWall BrownLine")
//                          41.884737, -87.631194
                            
                        }
                    }// end of berlinwall
                    .listRowBackground(Color.brown)
                    .foregroundColor(.white)
                    
//                    mythicalblueline
                    HStack{
                        Image("picaso")
                            .resizable()
                            .frame(width: 50, height: 50)
                        NavigationLink(destination: dynamictours(tourId: "mythicalblueline")){
                            Text("Mythical Monument BlueLine")
                            
                            
                        }
                    }// end of blueline
//                    agora
//                    41.868123, -87.623380
                    .listRowBackground(Color.blue)
                    .foregroundColor(.white)
                    
                    
                    //                    LSD
                                        HStack{
                                            Image("ql")
                                                .resizable()
                                                .frame(width: 50, height: 50)
                                            NavigationLink(destination: dynamictours(tourId: "LSD")){
                                                Text("Lake Shore Drive Tour")
                                                
                                                
                                            }
                                        }// end of blueline
                    //                    agora
                    //                    41.868123, -87.623380
                                        .listRowBackground(Color.blue)
                                        .foregroundColor(.white)

                    
              
                    
                } // end of List
                
                VStack{
                    Text("More Extensive (10+ stops)")
                        .padding()
                    List{
                        HStack{
                            Image("polishtriangle")
                                .resizable()
                                .frame(width: 50, height: 50)
                            NavigationLink(destination: dynamictours(tourId: "Fontaine-BlueLine")){
                                Text("Fontaine BlueLine")
                            }
                        }// end of chinatown
//                        .listRowBackground(Color(red:0.6, green:1, blue:0.5))
                        
//                        .listRowBackground(LinearGradient(gradient: Gradient(colors: [Color(red: 0.5, green: 0.3, blue: 1), .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
//)
                        .listRowBackground(AngularGradient(gradient: Gradient(colors: [Color(red: 0.2, green: 0, blue: 0.7), Color(red: 0.5, green: 0.3, blue: 1),Color(red: 0.2, green: 0, blue: 0.7), Color(red: 0.5, green: 0.3, blue: 1),Color(red: 0.2, green: 0, blue: 0.7)]), center: .center))
                        
                        .foregroundColor(.white)
        
                        
                        
                    }
                }
                
            }// end of Vstack
            .background(Color(red: 0.5, green: 0.3, blue: 1))
            .foregroundColor(.white)
            
       
        }
        .foregroundColor(Color(red: 0.5, green: 0.3, blue: 1))
        .ignoresSafeArea(edges: .top)
    }// end of body
}

#Preview {
    number3()
}


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
  
            VStack{
                Text("Tour De Chicago")
                
                List{

                    HStack{
                        Image("chinatownmid")
                            .resizable()
                            .frame(width: 50, height: 50)
                        NavigationLink(destination: dynamictours(tourId: "china-town-tour")) {
                            Text("ChinaTown RedLine")
                            
                            
                            
                        }
                    }// end of chinatown
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
              

                } // end of List
                VStack{
                    Text("More Extensive")
                    List{
                        HStack{
                            Image("polishtriangle")
                                .resizable()
                                .frame(width: 50, height: 50)
                            NavigationLink(destination: dynamictours(tourId: "Fontaine-BlueLine")){
                                Text("Fontaine BlueLine")
                            }
                        }// end of chinatown
                        
                        
                        
                    }
                }
                
            }// end of Vstack
            
       
        }
    }// end of body
}

#Preview {
    number3()
}


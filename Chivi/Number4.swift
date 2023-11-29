//
//  Number4.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 10/21/23.
//

import SwiftUI

struct Number4: View {
//    this is to see the favorited monuments and tours from file 3 where all the momuments and stuff is located
    @State private var showFavoritesOnly = false
    
    
    
    var body: some View {
        Text("Favorite Tours and Selected Options")
            .fontWeight(.heavy)
        List{
            
            HStack{
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
                Image("chinatownmid")
                    .resizable()
                    .frame(width: 50, height: 50)
                NavigationLink(destination: ChinatownGate()) {
                    Text("ChinaTown Gate")
                }// end of navigation link
            }// end of hstack
        }// end of list
    }
}

#Preview {
    Number4()
}

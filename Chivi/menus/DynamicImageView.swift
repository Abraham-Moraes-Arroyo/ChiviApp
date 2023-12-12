//
//  DynamicImageView.swift
//  Chivi
//
//  Created by Abraham Morales Arroyo on 12/12/23.
//

import SwiftUI

struct DynamicImageView: View {
    @Binding var imageName: String
    var body: some View {
        Image(imageName) // The image is dynamically set based on the imageName
            .resizable()
            .frame(width: 50, height: 50)

    }
    
}


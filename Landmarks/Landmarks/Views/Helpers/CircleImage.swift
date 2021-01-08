//
//  CircleImage.swift
//  Landmarks
//
//  Created by Mikael Melkonyan on 27.12.2020.
//

import SwiftUI

struct CircleImage: View {
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static let data = ModelData()
    
    static var previews: some View {
        CircleImage(imageName: data.landmarks[5].imageName)
            .previewLayout(.sizeThatFits)
    }
}

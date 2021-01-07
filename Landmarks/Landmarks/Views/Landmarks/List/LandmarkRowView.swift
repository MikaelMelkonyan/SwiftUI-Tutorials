//
//  LandmarkRowView.swift
//  Landmarks
//
//  Created by Mikael Melkonyan on 27.12.2020.
//

import SwiftUI

struct LandmarkRowView: View {
    
    let landmark: Landmark
    
    var body: some View {
        HStack {
            Image(landmark.imageName)
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRowView_Previews: PreviewProvider {
    static let data = LandmarksData()
    
    static var previews: some View {
        Group {
            LandmarkRowView(landmark: data.landmarks[0])
            LandmarkRowView(landmark: data.landmarks[1])
        }
        .previewLayout(.sizeThatFits)
    }
}

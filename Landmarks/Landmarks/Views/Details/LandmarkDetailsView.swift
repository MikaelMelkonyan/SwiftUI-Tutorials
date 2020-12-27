//
//  LandmarkDetailsView.swift
//  Landmarks
//
//  Created by Mikael Melkonyan on 27.12.2020.
//

import SwiftUI

struct LandmarkDetailsView: View {
    let landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinates: landmark.coordinates)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(imageName: landmark.imageName)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetailsView(landmark: store.landmarks[5])
    }
}

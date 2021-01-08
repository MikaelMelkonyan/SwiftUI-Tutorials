//
//  LandmarkDetailsView.swift
//  Landmarks
//
//  Created by Mikael Melkonyan on 27.12.2020.
//

import SwiftUI

struct LandmarkDetailsView: View {
    @EnvironmentObject private var data: ModelData
    let landmark: Landmark
    
    private var landmarkIndex: Int {
        data.landmarks.firstIndex { $0.id == landmark.id }!
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinates: landmark.coordinates)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(imageName: landmark.imageName)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                        .foregroundColor(.primary)
                    
                    FavoriteButtonView(isSet: $data.landmarks[landmarkIndex].isFavorite)
                }
                
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
    static let data = ModelData()
    
    static var previews: some View {
        LandmarkDetailsView(landmark: data.landmarks[5])
            .environmentObject(data)
    }
}

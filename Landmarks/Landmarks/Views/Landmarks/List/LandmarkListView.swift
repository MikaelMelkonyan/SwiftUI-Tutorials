//
//  LandmarkListView.swift
//  Landmarks
//
//  Created by Mikael Melkonyan on 27.12.2020.
//

import SwiftUI

struct LandmarkListView: View {
    @EnvironmentObject private var data: LandmarksData
    @State private var showFavoritesOnly = false
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(
                        destination: LandmarkDetailsView(landmark: landmark)
                            .environmentObject(data)
                    ) {
                        LandmarkRowView(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

// MARK: - Private
private extension LandmarkListView {
    
    var filteredLandmarks: [Landmark] {
        data.landmarks.filter {
            !showFavoritesOnly || $0.isFavorite
        }
    }
}

struct LandmarkListView_Previews: PreviewProvider {
    
    static var previews: some View {
        ForEach([
            "iPhone SE (2nd generation)",
            "iPhone XS Max"
        ], id: \.self) {
            LandmarkListView()
                .environmentObject(LandmarksData())
                .previewDevice(PreviewDevice(rawValue: $0))
                .previewDisplayName($0)
        }
    }
}

//
//  LandmarkListView.swift
//  Landmarks
//
//  Created by Mikael Melkonyan on 27.12.2020.
//

import SwiftUI

struct LandmarkListView: View {
    @State private var showFavoritesOnly = false
    
    var body: some View {
        NavigationView {
            List(filteredLandmarks) { landmark in
                NavigationLink(
                    destination: LandmarkDetailsView(
                        landmark: landmark
                    )
                ) {
                    LandmarkRowView(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

// MARK: - Private
private extension LandmarkListView {
    
    var filteredLandmarks: [Landmark] {
        store.landmarks.filter {
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
                .previewDevice(PreviewDevice(rawValue: $0))
                .previewDisplayName($0)
        }
    }
}

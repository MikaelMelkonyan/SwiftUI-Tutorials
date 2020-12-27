//
//  LandmarkListView.swift
//  Landmarks
//
//  Created by Mikael Melkonyan on 27.12.2020.
//

import SwiftUI

struct LandmarkListView: View {
    
    var body: some View {
        NavigationView {
            List(store.landmarks) { landmark in
                NavigationLink(
                    destination: LandmarkDetailsView(
                        landmark: landmark
                    )
                ) {
                    LandmarkRowView(landmark: landmark)
                }
            }
        }
        .navigationTitle("Landmarks")
    }
}

struct LandmarkListView_Previews: PreviewProvider {
    
    static var previews: some View {
        LandmarkListView()
    }
}

//
//  LandmarkListView.swift
//  Landmarks
//
//  Created by Mikael Melkonyan on 27.12.2020.
//

import SwiftUI

struct LandmarkListView: View {
    
    var body: some View {
        List {
            LandmarkRowView(landmark: store.landmarks[0])
            LandmarkRowView(landmark: store.landmarks[0])
        }
    }
}

struct LandmarkListView_Previews: PreviewProvider {
    
    static var previews: some View {
        LandmarkListView()
    }
}

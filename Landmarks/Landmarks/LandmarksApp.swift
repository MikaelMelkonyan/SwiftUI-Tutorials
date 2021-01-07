//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Mikael Melkonyan on 27.12.2020.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var landmarksData = LandmarksData()
    
    var body: some Scene {
        WindowGroup {
            BadgeView()
//            LandmarkListView()
//                .environmentObject(LandmarksData())
        }
    }
}

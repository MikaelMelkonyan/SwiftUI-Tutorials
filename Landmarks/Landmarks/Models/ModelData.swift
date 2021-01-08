//
//  LandmarksData.swift
//  Landmarks
//
//  Created by Mikael Melkonyan on 27.12.2020.
//

import Combine

final class ModelData: ObservableObject {
    
    @Published var landmarks: [Landmark]
    let hikes: [Hike]
    
    private let loader = DataLoader()
    
    init() {
        landmarks = loader.load("landmarkData.json")
        hikes = loader.load("hikeData.json")
    }
}

//
//  Store.swift
//  Landmarks
//
//  Created by Mikael Melkonyan on 27.12.2020.
//

import Combine

let store = Store()

final class Store: ObservableObject {
    
    @Published var landmarks: [Landmark]
    private let loader = DataLoader()
    
    init() {
        landmarks = loader.load("landmarkData.json")
    }
}

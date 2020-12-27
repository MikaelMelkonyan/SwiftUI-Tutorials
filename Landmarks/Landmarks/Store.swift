//
//  Store.swift
//  Landmarks
//
//  Created by Mikael Melkonyan on 27.12.2020.
//

let store = Store()

final class Store {
    
    private lazy var loader = DataLoader()
    
    lazy var landmarks: [Landmark] = {
        loader.load("landmarkData.json")
    }()
}

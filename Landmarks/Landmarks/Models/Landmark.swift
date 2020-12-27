//
//  Landmark.swift
//  Landmarks
//
//  Created by Mikael Melkonyan on 27.12.2020.
//

struct Landmark {
    
    let id: Int
    let name: String
//    private let park: String
//    private let state: String
//    private let description: String
    let imageName: String
//    private let coordinates: Coordinates
}

// MARK: - Decodable
extension Landmark: Decodable {}

// MARK: - Identifiable
extension Landmark: Identifiable {}

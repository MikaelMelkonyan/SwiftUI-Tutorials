//
//  Landmark.swift
//  Landmarks
//
//  Created by Mikael Melkonyan on 27.12.2020.
//

struct Landmark {
    
    let id: Int
    let name: String
    let park: String
    let state: String
    let description: String
    let imageName: String
    let coordinates: Coordinates
    let isFavorite: Bool
}

// MARK: - Decodable
extension Landmark: Decodable {}

// MARK: - Identifiable
extension Landmark: Identifiable {}

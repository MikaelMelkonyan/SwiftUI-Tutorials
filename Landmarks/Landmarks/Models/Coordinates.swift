//
//  Coordinates.swift
//  Landmarks
//
//  Created by Mikael Melkonyan on 27.12.2020.
//

struct Coordinates {
    
    private let latitude: Double
    private let longitude: Double
}

// MARK: - Decodable
extension Coordinates: Decodable {}

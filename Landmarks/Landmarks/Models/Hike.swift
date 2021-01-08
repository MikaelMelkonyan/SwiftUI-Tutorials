//
//  Hike.swift
//  Landmarks
//
//  Created by Mikael Melkonyan on 07.01.2021.
//

struct Hike: Decodable {
    
    let id: Int
    let name: String
    let distance: Double
    let difficulty: Int
    let observations: [Observation]
}

// MARK: - Model
extension Hike {
    
    struct Observation: Decodable {
        
        let distanceFromStart: Double
        
        let elevation: Range<Double>
        let pace: Range<Double>
        let heartRate: Range<Double>
    }
}

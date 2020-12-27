//
//  DataLoader.swift
//  Landmarks
//
//  Created by Mikael Melkonyan on 27.12.2020.
//

import Foundation

final class DataLoader {
    
    private let decoder = JSONDecoder()
    
    func load<Type: Decodable>(_ filename: String, in bundle: Bundle = .main) -> Type {
        let data: Data
        
        guard let file = bundle.url(forResource: filename, withExtension: nil) else {
            fatalError("Couldn't find \(filename) in main bundle.")
        }
        
        do {
            try data = Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
        }
        
        do {
            return try decoder.decode(Type.self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(Type.self):\n\(error)")
        }
    }
}

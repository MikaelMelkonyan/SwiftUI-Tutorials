//
//  BadgeSymbolView.swift
//  Landmarks
//
//  Created by Mikael Melkonyan on 07.01.2021.
//

import SwiftUI

struct BadgeSymbolView: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let width = min(geometry.size.width, geometry.size.height)
                let height = width * 0.75
                let spacing = width * 0.03
                let middle = width * 0.5
                let topWidth = width * 0.226
                let topHeight = height * 0.488
                
                path.addLines([
                    CGPoint(x: middle, y: spacing),
                    CGPoint(x: middle - topWidth, y: topHeight - spacing),
                    CGPoint(x: middle, y: topHeight / 2 + spacing),
                    CGPoint(x: middle + topWidth, y: topHeight - spacing)
                ])
                
                path.addLines([
                    CGPoint(x: middle - topWidth, y: topHeight + spacing * 0.3),
                    CGPoint(x: spacing, y: height - spacing),
                    CGPoint(x: width - spacing, y: height - spacing),
                    CGPoint(x: middle + topWidth, y: topHeight + spacing * 1.3),
                    CGPoint(x: middle, y: topHeight / 2 + spacing * 2.2)
                ])
            }
            .fill(BadgeSymbolView.symbolColor)
        }
    }
}

// MARK: - Private
private extension BadgeSymbolView {
    
    static let symbolColor = Color(red: 79.0 / 255, green: 79.0 / 255, blue: 191.0 / 255)
}

struct BadgeSymbolView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeSymbolView()
    }
}

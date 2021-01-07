//
//  BadgeBackground.swift
//  Landmarks
//
//  Created by Mikael Melkonyan on 07.01.2021.
//

import SwiftUI

struct BadgeBackgroundView: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                var width: CGFloat = min(
                    geometry.size.width, geometry.size.height
                )
                let height = width
                
                let xScale: CGFloat = 0.832
                let xOffset = (1 - xScale) * width / 2
                width *= xScale
                
                path.move(
                    to: CGPoint(
                        x: width * 0.95 + xOffset,
                        y: height * (0.20 + HexagonParameters.adjustment)
                    )
                )
                
                HexagonParameters.segments.forEach { segment in
                    path.addLine(
                        to: CGPoint(
                            x: width * segment.line.x + xOffset,
                            y: height * segment.line.y
                        )
                    )
                    path.addQuadCurve(
                        to: CGPoint(
                            x: width * segment.curve.x + xOffset,
                            y: height * segment.curve.y
                        ),
                        control: CGPoint(
                            x: width * segment.control.x + xOffset,
                            y: height * segment.control.y
                        )
                    )
                }
            }
            .fill(BadgeBackgroundView.linearGradient)
        }
        .aspectRatio(contentMode: .fit)
    }
}

// MARK: - Private
private extension BadgeBackgroundView {
    
    static let linearGradient = LinearGradient(
        gradient: BadgeBackgroundView.gradient,
        startPoint: UnitPoint(x: 0.5, y: 0),
        endPoint: UnitPoint(x: 0.5, y: 0.6)
    )
    
    static let gradient: Gradient = {
        let start = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
        let end = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
        return Gradient(colors: [start, end])
    }()
}

struct BadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackgroundView()
    }
}

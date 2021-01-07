//
//  BadgeView.swift
//  Landmarks
//
//  Created by Mikael Melkonyan on 07.01.2021.
//

import SwiftUI

struct BadgeView: View {
    private let rotationCount = 8
    
    var body: some View {
        ZStack {
            BadgeBackgroundView()
            
            GeometryReader { geometry in
                badgeSymbolsView
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
            }
        }
        .scaledToFit()
    }
}

// MARK: - Private
private extension BadgeView {
    var badgeSymbolsView: some View {
        ForEach(0..<rotationCount) { index in
            RotatedBadgeSymbolView(angle: angle(for: index))
        }
        .opacity(0.5)
    }
    
    func angle(for index: Int) -> Angle {
        let count = Double(rotationCount)
        let index = Double(index)
        return Angle(degrees: index * 360 / count)
    }
}

struct BadgeView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeView()
    }
}

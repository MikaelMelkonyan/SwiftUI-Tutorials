//
//  RotatedBadgeSymbolView.swift
//  Landmarks
//
//  Created by Mikael Melkonyan on 07.01.2021.
//

import SwiftUI

struct RotatedBadgeSymbolView: View {
    let angle: Angle
    let padding: CGFloat
    
    init(angle: Angle, padding: CGFloat = -60) {
        self.angle = angle
        self.padding = padding
    }
    
    var body: some View {
        BadgeSymbolView()
            .padding(padding)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbolView_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbolView(angle: Angle(degrees: 0))
    }
}

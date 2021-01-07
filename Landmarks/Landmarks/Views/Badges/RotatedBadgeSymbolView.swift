//
//  RotatedBadgeSymbolView.swift
//  Landmarks
//
//  Created by Mikael Melkonyan on 07.01.2021.
//

import SwiftUI

struct RotatedBadgeSymbolView: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbolView()
            .padding(-60)
            .rotationEffect(angle)
    }
}

struct RotatedBadgeSymbolView_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbolView(angle: Angle(degrees: 5))
    }
}

//
//  MapView.swift
//  Landmarks
//
//  Created by Mikael Melkonyan on 27.12.2020.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    let coordinates: Coordinates
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 34.011_286, longitude: -116.166_868
        ),
        span: MKCoordinateSpan(
            latitudeDelta: 0.1, longitudeDelta: 0.1
        )
    )
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinates: coordinates)
            }
    }
    
    private func setRegion(coordinates: Coordinates) {
        region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(
                latitude: coordinates.latitude,
                longitude: coordinates.longitude
            ),
            span: MKCoordinateSpan(
                latitudeDelta: 0.1, longitudeDelta: 0.1
            )
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinates: store.landmarks[5].coordinates)
            .previewLayout(.sizeThatFits)
    }
}

/*
 See LICENSE folder for this sample’s licensing information.
 
 Abstract:
 A view displaying information about a hike, including an elevation graph.
 */

import SwiftUI

struct HikeView: View {
    
    let hike: Hike
    @State private var showDetail = false
    
    private let distanceFormatter = LengthFormatter()
    
    var body: some View {
        VStack {
            HStack {
                HikeGraph(hike: hike, path: \.elevation)
                    .frame(width: 50, height: 30)
                    .animation(nil)
                
                VStack(alignment: .leading) {
                    Text(hike.name)
                        .font(.headline)
                    
                    Text(distanceText)
                }
                
                Spacer()
                
                Button(action: {
                    withAnimation {
                        showDetail.toggle()
                    }
                }) {
                    Image(systemName: "chevron.right.circle")
                        .imageScale(.large)
                        .rotationEffect(.degrees(showDetail ? 90 : 0))
                        .scaleEffect(showDetail ? 1.5 : 1)
                        .padding()
                }
            }
            
            if showDetail {
                HikeDetail(hike: hike)
                    .transition(moveAndFade)
            }
        }
    }
}

// MARK: - Private
extension HikeView {
    
    var distanceText: String {
        distanceFormatter.string(fromValue: hike.distance, unit: .kilometer)
    }
    
    var moveAndFade: AnyTransition {
        let insertion = AnyTransition.move(edge: .trailing)
            .combined(with: .opacity)
        let removal = AnyTransition.scale
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

struct HikeView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            HikeView(hike: ModelData().hikes[0])
                .padding()
            Spacer()
        }
    }
}

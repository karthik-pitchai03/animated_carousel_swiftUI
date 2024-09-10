//
//  CarouselView.swift
//  Animated Carousel View
//
//  Created by localuser on 11/09/24.
//

import SwiftUI

struct CarouselView: View {
    
    private var colors: [Color] = [.cyan,.blue,.orange, .gray, .green, .indigo, .pink]
    
    var body: some View {
        //ScrollView and HStack for horizontal scrolling.
        ScrollView(.horizontal){
            HStack(spacing : 24){
                ForEach(0..<colors.count, id: \.self){ index in
                    RoundedRectangle(cornerRadius: 24)
                        .fill(colors[index])
                        .shadow(radius: 5, x: 5, y: 5)
                        .frame(width: UIScreen.main.bounds.width - 100,height: 400)
                        .scrollTransition(){ content, phase in
                            content
                                .opacity(phase.isIdentity ? 1 : 0.5)
                                .scaleEffect(y: phase.isIdentity ? 1 : 0.7)
                            
                        }
                }
            }
            .scrollTargetLayout() //Align content to the view
        }
        .contentMargins(50, for: .scrollContent)// Padding to the scroll content
        .scrollTargetBehavior(.viewAligned) // Align content behavior
    }
}

#Preview {
    ContentView()
}

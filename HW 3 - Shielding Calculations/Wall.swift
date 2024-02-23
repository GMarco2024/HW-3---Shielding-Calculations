//
//  ContentView.swift
//  HW 3 - Shielding Calculations
//
//  Wall.swift
//
//  Created by Marco on 2/22/24.
//

import SwiftUI

struct Wall: View {
    @Binding var pathEnd: [(xPosition: Double, yPosition: Double)]
    
    var backgroundWidth: CGFloat = 600
    var backgroundHeight: CGFloat = 600
    
    var body: some View {
        ZStack {
            
            // Drawing the background for the entire view. We make it entirely in black.
            
            Rectangle()
                .fill(Color.black)
                .frame(width: backgroundWidth, height: backgroundHeight)
            
            // Drawing the simulation area boundary
            
            Rectangle()
                .strokeBorder(Color.white, lineWidth: 1)
                .frame(width: 500, height: 500)
            
            PathPositions(pathEnd: $pathEnd)
                .frame(width: backgroundWidth, height: backgroundHeight)
            
        }
        
    }
    
}

// Preview for development purposes
struct Wall_Previews: PreviewProvider {
    static var previews: some View {
        Wall(pathEnd: .constant([(xPosition: 2.5, yPosition: 2.5)]))
    }
}

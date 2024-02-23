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
    @Binding var particleEndPositions: [(xPosition: Double, yPosition: Double)]
    
    var backgroundWidth: CGFloat = 600
    var backgroundHeight: CGFloat = 600
    
    var body: some View {
        ZStack {
            // Drawing the background for the entire view
            Rectangle()
                .fill(Color.black) // Background color
                .frame(width: backgroundWidth, height: backgroundHeight)
            
            // Drawing the simulation area boundary
            Rectangle()
                .strokeBorder(Color.white, lineWidth: 1)
                .frame(width: 500, height: 500)
            
            // Integrating PathPositions to visualize neutron paths
            PathPositions(particleEndPositions: $particleEndPositions)
                .frame(width: backgroundWidth, height: backgroundHeight)
        }
    }
}

    

// Preview for development purposes
struct Wall_Previews: PreviewProvider {
    static var previews: some View {
        Wall(particleEndPositions: .constant([(xPosition: 2.5, yPosition: 2.5)]))
    }
}

//
//  ContentView.swift
//  HW 3 - Shielding Calculations
//
//  Neutron.swift
//
//  Created by Marco on 2/22/24.
//

import Foundation
import SwiftUI

class Neutron: ObservableObject {
    @Published var position: CGPoint
    @Published var kineticEnergy: Double
    let meanFreePath: CGFloat = 1.0
    
    // meters, representing the average distance traveled between collisions
    
    @Published var hasEscaped: Bool = false

    init(position: CGPoint, initialEnergy: Double) {
        self.position = position
        self.kineticEnergy = initialEnergy
    }

    // Simulates the movement of the neutron based on its mean free path and updates its position and energy accordingly.
    
    func simulateMovement(energyLossPercent: Double, wallDimensions: CGSize) {
        while kineticEnergy > energyLossPercent {
            
    // Random angle for 2D scattering
            
            let angle = Double.random(in: 0..<2 * .pi)
            
            let mycos = cos(angle)
            let mysin = sin(angle)
            
            let dx = cos(angle) * Double(meanFreePath)
            
            let dy = sin(angle) * Double(meanFreePath)
            
            // Update neutron's position based on the angle and mean free path
            position.x += CGFloat(dx)
            position.y += CGFloat(dy)
            
            // Check if the neutron escapes
            if position.x <= 0 || position.x >= wallDimensions.width || position.y <= 0 || position.y >= wallDimensions.height {
                hasEscaped = true
                print("Escaped ",position.x, position.y)
                break
            }
            
           //Kinetic enegy is 100% minus energyLossPercent
            kineticEnergy -= energyLossPercent
            
            // Check for energy depletion
            if kineticEnergy <= energyLossPercent {
                print("Absorbed ",position.x, position.y)
                break // Neutron is absorbed
        
            }
        }
    }

    // Updates the neutron's kinetic energy based on the percentage of energy lost during a collision.
    func energyLoss(percentAbsorption: Double) {
        kineticEnergy *= 1 - percentAbsorption
        kineticEnergy = max(kineticEnergy, 0.0)
    }

    // Returns a boolean indicating whether the neutron has escaped the wall.
    func didEscape() -> Bool {
        return hasEscaped
    }
    
    //Simulation function
    func simulateNeutronPaths(numberOfPaths: Int, beamHeight: CGFloat, energyLossPercent: Double, initialEnergy: Double, wallDimensions: CGSize) -> (absorbed: Int, escaped: Int, endPositions: [(xPosition: Double, yPosition: Double)]) {
        var escaped = 0
        var absorbed = 0
        var endPositions: [(xPosition: Double, yPosition: Double)] = []
        
        for _ in 0..<numberOfPaths {
            let neutron = Neutron(position: CGPoint(x: meanFreePath, y: beamHeight), initialEnergy: initialEnergy)
            neutron.simulateMovement(energyLossPercent: energyLossPercent, wallDimensions: wallDimensions)
            
            if neutron.didEscape() {
                escaped += 1
                endPositions.append((xPosition: Double(neutron.position.x), yPosition: Double(neutron.position.y)))
            } else {
                absorbed += 1

            }
        }
        
        return (absorbed, escaped, endPositions)
    }
    
}




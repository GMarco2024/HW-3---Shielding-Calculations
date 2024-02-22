//
//  ContentView.swift
//  HW 3 - Shielding Calculations
//
//  Created by Marco on 2/22/24.
//

import SwiftUI


struct ContentView: View {
    
    @State var NumberOfPathsString = "1"
    @State var BeamOffTheGroundString = ""
    @State var EnergyLossString = ""
    @State var NeutronAbsorptionString = ""
    @State var NeutronEscapeeString = ""
    
    var body: some View {
        VStack {
            
            VStack(alignment: .center) {
                Text("Neutron Paths")
                    
                TextField("number of Paths", text: $NumberOfPathsString)
                    .padding()
                
                VStack(alignment: .center) {
                    Text("Height of Beam Off Ground")
                      
                    TextField("Height", text: $BeamOffTheGroundString)
                        .padding()
                    
                    Text("Energy Loss")
                    
                    TextField("Loss of Energy", text: $EnergyLossString)
                    
                    Text("Absorbed Neutrons")
                    
                    TextField("Number of Nuetrons Absorbed by Wall", text: $NeutronAbsorptionString)
                    
                    Text("Escaped Neutrons")
                    
                    TextField("Number of Nuetrons Escaped", text: $NeutronEscapeeString)
                    
                }
                .padding()
            }
        }
        
                              
    }
}

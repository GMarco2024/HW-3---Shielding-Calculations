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
                
                Text("HW 3 Shielding Calculations of Neutrons")
                    .underline(true, color: .black)
                    .font(.system(size: 20))
                    .padding()
                
                Text("Neutron Paths")
                    .font(.headline)
                    .fontWeight(.regular)
                    
                TextField("number of Paths", text: $NumberOfPathsString)
                    .padding()
                
               
                    Text("Height of Beam Off Ground")
                        .font(.headline)
                        .fontWeight(.regular)
                      
                    TextField("Height", text: $BeamOffTheGroundString)
                        .padding()
                    
                    Text("Energy Loss")
                        .font(.headline)
                        .fontWeight(.regular)
                    
                    TextField("Loss of Energy", text: $EnergyLossString)
                    
                    Text("Absorbed Neutrons")
                    .font(.headline)
                    .fontWeight(.regular)
                    
                    TextField("Number of Nuetrons Absorbed by Wall", text: $NeutronAbsorptionString)
                    
                    Text("Escaped Neutrons")
                    .font(.headline)
                    .fontWeight(.regular)
                    
                    TextField("Number of Nuetrons Escaped", text: $NeutronEscapeeString)
                    
                }
                .padding()
            }
        }
        
                              
    }

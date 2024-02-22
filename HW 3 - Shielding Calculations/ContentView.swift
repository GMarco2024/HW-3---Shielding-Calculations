//
//  ContentView.swift
//  HW 3 - Shielding Calculations
//
//  Created by Marco on 2/22/24.
//

import SwiftUI


struct ContentView: View {
    
    @State var NumberOfPathsString = "1"
    @State var BeamOffTheGroundString = "4m"
    @State var EnergyLossString = ".10"
    @State var NeutronAbsorptionString = ""
    @State var NeutronEscapeeString = ""
    
    var body: some View {
        
        ScrollView{
            VStack {
                
                Text("HW 3 Shielding Calculations of Neutrons")
                    .underline(true, color: .black)
                    .font(.system(size: 20))
                
                Text("We calculate the Absorption and Escaped Neutrons of a 5m x 5m 2D Wall")
                    .font(.headline)
                    .fontWeight(.regular)
                
                Spacer()
                
                
                Text("Neutron Paths")
                    .font(.headline)
                    .fontWeight(.regular)
                
                TextField("number of Paths", text: $NumberOfPathsString)
                    .frame(maxWidth: 350)
                    .padding()
                
                Text("Height of Beam Off Ground (In Meters)")
                    .font(.headline)
                    .fontWeight(.regular)
                
                TextField("Height", text: $BeamOffTheGroundString)
                    .frame(maxWidth: 350)
                    .padding()
                
                Text("Energy Loss (Percentage)")
                    .font(.headline)
                    .fontWeight(.regular)
                
                TextField("Loss of Energy", text: $EnergyLossString)
                    .frame(maxWidth: 350)
                    .padding()
                
                Text("Absorbed Neutrons")
                    .font(.headline)
                    .fontWeight(.regular)
                
                TextField("Number of Nuetrons Absorbed by Wall", text: $NeutronAbsorptionString)
                    .frame(maxWidth: 350)
                    .padding()
                
                Text("Escaped Neutrons")
                    .font(.headline)
                    .fontWeight(.regular)
                
                TextField("Number of Neutrons Escaped", text: $NeutronEscapeeString)
                    .frame(maxWidth: 350)
                    .padding()
                
            }
            .padding()
        }
    }
}
                              
    

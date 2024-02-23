import SwiftUI

struct Wall: View {
   
    
    var backgroundWidth: CGFloat = 600
    var backgroundHeight: CGFloat = 600
    
    var body: some View {
        ZStack {
            // Drawing the background for the entire view
            Rectangle()
                .fill(Color.black) // Background color
                .frame(width: 600, height: 600)
            
            // Drawing the simulation area boundary
            Rectangle()
                .strokeBorder(Color.white, lineWidth: 1)
                .frame(width: 500, height: 500)
            
        }
    }
}

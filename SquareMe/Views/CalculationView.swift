//
//  CalculationView.swift
//  SquareMe
//
//  Created by Russell Gordon on 2023-02-02.
//

import SwiftUI

struct CalculationView: View {
    
    // MARK: Stored properties
    
    // Keeps the input given by user
    @State var inputGiven = ""
    
    // MARK: Computed properties
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("5.5", text: $inputGiven)
                    .font(.largeTitle)
                    .padding()
            }
            .navigationTitle("Square Me")
        }
    }
}

struct CalculationView_Previews: PreviewProvider {
    static var previews: some View {
        CalculationView()
    }
}

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
    
    // STEP TWO
    // Convert the input given into an optional Double
    var inputGivenAsOptionalDouble: Double? {
        
        // Attempt to create the optional Double
        guard let inputGivenAsDouble = Double(inputGiven) else {
            // User gave us bad input ... cannot convert to double
            return nil
        }
        
        // We have an actual double, so return it
        return inputGivenAsDouble
    }
    
    // Take the input and format it for output
    var formattedOutputValue: String {
        
        // STEP THREE
        // See if we have a number to work with!
        // Get a non-optional Double
        guard let numberToSquare = inputGivenAsOptionalDouble else {
            
            return "Please enter a numeric value, such as: 5.0"
        }
        
        // We do have a number to work with... so square it
        let squaredNumber = numberToSquare * numberToSquare
        
        // STEP FOUR
        // Return the formatted number
        return squaredNumber.formatted(.number.precision(.fractionLength(3)))
        
    }
    
    var body: some View {
        NavigationView {
            VStack {
                // STEP ONE: String
                TextField("5.5", text: $inputGiven)
                    .font(.largeTitle)
                    .padding()
                
                Text(formattedOutputValue)
                    .font(.largeTitle)
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

//
//  ContentView.swift
//  UnitConversion
//
//  Created by Karol Kusowski on 10/06/2026.
//

import SwiftUI

struct ContentView: View {
    @State private var inputValue = 0.0
    @State private var inputUnit = UnitLength.meters
    @State private var outputUnit = UnitLength.kilometers
    
    @FocusState private var amountIsFocused: Bool
    
    let units: [UnitLength] = [
        .millimeters,
        .centimeters,
        .meters,
        .kilometers,
        .inches,
        .feet,
        .yards,
        .miles
    ]
    
    var convertedValue: Double {
        let measurement = Measurement(
            value: inputValue,
            unit: inputUnit
        )
        
        return measurement
            .converted(to: outputUnit)
            .value
    }
    
    func unitName(_ unit: UnitLength) -> String {
        switch unit {
        case .millimeters: return "Millimeters"
        case .centimeters: return "Centimeters"
        case .meters: return "Meters"
        case .kilometers: return "Kilometers"
        case .inches: return "Inches"
        case .feet: return "Feet"
        case .yards: return "Yards"
        case .miles: return "Miles"
        default: return ""
        }
    }
    var body: some View {
        NavigationStack {
            Form {
                Section("Value to convert") {
                    TextField("Input", value: $inputValue, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                }
                Section("Select the input and output units") {
                    Picker("Input Unit", selection: $inputUnit) {
                        ForEach(units, id: \.self) { unit in
                            Text(unitName(unit))
                                .tag(unit)
                        }
                    }
                    Picker("Output Unit", selection: $outputUnit) {
                        ForEach(units, id: \.self) { unit in
                            Text(unitName(unit))
                                .tag(unit)
                        }
                    }
                }
                Section("Result") {
                    Text("\(convertedValue.formatted()) \(outputUnit.symbol)")

                }
            }
            .navigationTitle("Unit Conversion")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar {
                if amountIsFocused {
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

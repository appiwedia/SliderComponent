//
//  ContentView.swift
//  SliderComponent
//
//  Created by Mickael Mas on 04/03/2020.
//  Copyright © 2020 APPIWEDIA. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var value: Double = 0.5
    @State private var value2: Double = 50

    @State private var value3: Double = 0
    @State private var step3: Double = 10

    @State private var value4: Double = 1

    var body: some View {
        
        Form {
            Section {
                Text("Slider par défaut = \(value)")
                
                Slider(value: $value)
                    .accentColor(.yellow)
            }
            
            Section {
                Text("Slider avec plage = \(value2)")
                
                Slider(value: $value2, in: 0...100)
                    .accentColor(.red)
            }
            
            Section {
                Text("Slider avec un pas de \(Int(step3)) = \(value3)")
                
                Slider(value: $value3, in: 0...100, step: step3)
                    .accentColor(.green)
            }
            
            Section {
                Text("Nombre de personnes : \(Int(value4))")
                
                Slider(value: $value4, in: 1...3, step: 1, onEditingChanged: { (value) in
                    print(value)
                }, minimumValueLabel: Image(systemName: "person.fill"), maximumValueLabel: Image(systemName: "person.3.fill"), label: {
                    Text("Label")
                }).accentColor(.blue)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

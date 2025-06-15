//
//  ContentView.swift
//  Program 1
//
//  Created by swift on 15/06/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var xInput: String = ""
    @State private var yInput: String = ""
    @State private var result: String = ""
    
    var body: some View {
        VStack(spacing: 16) {
            TextField("Enter X", text: $xInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            TextField("Enter Y", text: $yInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("Compare") {
                if let x = Int(xInput), let y = Int(yInput) {
                    if x > y {
                        result = "X is greater than Y"
                    } else if x < y {
                        result = "X is less than Y"
                    } else {
                        result = "X is equal to Y"
                    }
                } else {
                    result = "Please enter valid numbers for X and Y."
                }
            }
            .padding(.top)

            Text(result)
                .foregroundColor(.blue)
                .padding()
        }
    }
}

#Preview {
    ContentView()
}

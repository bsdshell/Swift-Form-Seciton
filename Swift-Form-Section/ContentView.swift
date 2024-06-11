//
//  ContentView.swift
//  Swift-Form-Section
//
//  Created by aaa on 2024-06-11.
//

import SwiftUI

struct ContentView: View {
    @State private var enableLogging = false
    @State private var selectedColor = "Red"
    @State private var colors = ["Red", "Green", "Blue"]

    var body: some View {
        Form {
            Section(footer: Text("Note: Enabling logging here")) {
                Picker("Select a color", selection: $selectedColor) {
                    ForEach(colors, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.segmented)

                Toggle("Enable Logging", isOn: $enableLogging)
            }

            Section {
                Button("Save changes") {
                    // activate theme!
                    print("Click Save changes")
                }
            }
        }
    }
}

/*
 #Preview {
 ContentView()
 }
 */

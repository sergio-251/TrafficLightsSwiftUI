//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Sergey Efimov on 05.01.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = "Start"
    
    @State private var nextColor: Color = .red
    
    @State private var isOnRed = false
    @State private var isOnYellow = false
    @State private var isOnGreen = false
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                LightView(color: .red, isOn: isOnRed)
                LightView(color: .yellow, isOn: isOnYellow)
                LightView(color: .green, isOn: isOnGreen)
                Spacer()
                StartButton(name: name) {
                    isPressed()
                }
            }
            .padding()
        }
    }
    
    private func isPressed() {
        name = "Next"
        switch nextColor {
        case .red:
            nextColor = .yellow
            isOnRed = true
            isOnGreen = false
        case .yellow:
            nextColor = .green
            isOnYellow = true
            isOnRed = false
        default:
            nextColor = .red
            isOnGreen = true
            isOnYellow = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

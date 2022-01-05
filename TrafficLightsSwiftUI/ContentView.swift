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
    
    @State private var redColor = LightView(color: .red)
    @State private var yellowColor = LightView(color: .yellow)
    @State private var greenColor = LightView(color: .green)
    
    private var button: some View {
        Button {
            isPressed()
        } label: {
            Text(name)
                .font(.title)
                .foregroundColor(.white)
                .frame(width: 150, height: 40)
                .background(.blue)
                .cornerRadius(20)
        }
    }
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                redColor
                yellowColor
                greenColor
                Spacer()
                button
            }
            .padding()
        }
    }
    
    private func isPressed() {
        name = "Next"
        switch nextColor {
        case .red:
            nextColor = .yellow
            redColor.isOn = true
            greenColor.isOn = false
        case .yellow:
            nextColor = .green
            yellowColor.isOn = true
            redColor.isOn = false
        default:
            nextColor = .red
            greenColor.isOn = true
            yellowColor.isOn = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

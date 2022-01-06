//
//  LightView.swift
//  TrafficLightsSwiftUI
//
//  Created by Sergey Efimov on 05.01.2022.
//

import SwiftUI

struct LightView: View {
    let color: Color
    var isOn: Bool
    
    private var opacity: Double {
        isOn ? 1.0 : 0.3
    }
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            
    }
}

struct LightView_Previews: PreviewProvider {
    static var previews: some View {
        LightView(color: .red, isOn: true)
    }
}

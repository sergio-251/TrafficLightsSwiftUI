//
//  StartButton.swift
//  TrafficLightsSwiftUI
//
//  Created by Sergey Efimov on 06.01.2022.
//

import SwiftUI

struct StartButton: View {
    var name: String
    let isPressed: () -> Void
    
    var body: some View {
        Button(action: isPressed) {
            Text(name)
                .font(.title)
                .foregroundColor(.white)
                .frame(width: 150, height: 40)
                .background(.blue)
                .cornerRadius(20)
        }
    }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton(name: "Start", isPressed: {})
    }
}

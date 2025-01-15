//
//  AppBigButton.swift
//  GameMix
//
//  Created by Jacques HU on 15/01/2025.
//

import SwiftUI

struct AppBigButton: View {
    var label: String
    var foregroundColor: Color = Color.lightLabel
    var action: (() -> Void)?
    
    var body: some View {
        Button(action: {
            action?()
        }) {
            ZStack {
                Rectangle()
                    .cornerRadius(20)
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal)
                
                Text(label)
                    .font(.system(size: 32, weight: .bold, design: .rounded))
                    .foregroundStyle(foregroundColor)
            }
        }
    }
    
    func foregroundColor(_ color: Color) -> Self {
        Self(label: self.label, foregroundColor: color, action: self.action)
    }
}

#Preview {
    AppBigButton(label: "")
}

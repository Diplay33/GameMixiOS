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
                    .shadow(color: .white.opacity(0.6), radius: 4, x: -4, y: -4)
                    .shadow(color: .black.opacity(0.1), radius: 3, x: 4, y: 4)
                
                Text(label)
                    .font(.system(size: 32, weight: .bold, design: .rounded))
                    .foregroundStyle(foregroundColor)
                    .padding(.horizontal, 35)
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
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

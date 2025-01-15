//
//  AppBigNavigationLink.swift
//  GameMix
//
//  Created by Jacques HU on 15/01/2025.
//

import SwiftUI

struct AppBigNavigationLink<Destination: View>: View {
    var label: String
    var foregroundColor: Color = Color.lightLabel
    var destination: () -> Destination
    
    var body: some View {
        NavigationLink(destination: destination) {
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
        Self(label: self.label, foregroundColor: color, destination: self.destination)
    }
}

#Preview {
    AppBigNavigationLink(label: "") {
        EmptyView()
    }
}

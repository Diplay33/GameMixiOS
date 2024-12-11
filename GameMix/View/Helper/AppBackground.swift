//
//  AppBackground.swift
//  GameMix
//
//  Created by Jacques HU on 11/12/2024.
//

import SwiftUI

struct AppBackground<Content: View>: View {
    var contentView: () -> Content
    
    init(@ViewBuilder contentView: @escaping () -> Content) {
        self.contentView = contentView
    }
    
    var body: some View {
        contentView()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.background)
//            .padding(.horizontal, 30)
    }
}

#Preview {
    AppBackground {
        Text("Hello, World!")
    }
}

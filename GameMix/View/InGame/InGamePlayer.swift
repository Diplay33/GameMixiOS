//
//  InGamePlayer.swift
//  GameMix
//
//  Created by Jacques HU on 26/02/2025.
//

import SwiftUI

struct InGamePlayer: View {
    var playing: Bool
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.lightLabel)
                .stroke(playing ? Color.s : Color.p, lineWidth: 8)
                .frame(width: 100, height: 100)
            
            Text("P1")
                .font(.system(size: 32, weight: .bold, design: .rounded))
                .foregroundStyle(Color.p)
        }
    }
}

#Preview {
    InGamePlayer(playing: true)
}

//
//  InGamePlayerRow.swift
//  GameMix
//
//  Created by Jacques HU on 26/02/2025.
//

import SwiftUI

struct InGamePlayerRow: View {
    var leftPlayer: (UUID, String)
    var rightPlayer: (UUID, String)
    
    var body: some View {
        HStack {
            InGamePlayer(playerOrder: 1, playing: true)
            
            Spacer()
            
            InGamePlayer(playerOrder: 1, playing: true)
        }
    }
}

#Preview {
    InGamePlayerRow(leftPlayer: (UUID(), ""), rightPlayer: (UUID(), ""))
}

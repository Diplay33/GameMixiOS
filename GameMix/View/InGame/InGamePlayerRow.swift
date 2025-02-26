//
//  InGamePlayerRow.swift
//  GameMix
//
//  Created by Jacques HU on 26/02/2025.
//

import SwiftUI

struct InGamePlayerRow: View {
    var leftPlayer: Player
    var rightPlayer: Player
    
    var body: some View {
        HStack {
            InGamePlayer(playerOrder: 1, playing: true)
            
            Spacer()
            
            InGamePlayer(playerOrder: 1, playing: true)
        }
    }
}

#Preview {
    InGamePlayerRow(leftPlayer: Player(id: UUID(), name: ""), rightPlayer: Player(id: UUID(), name: ""))
}

//
//  InGamePlayerRow.swift
//  GameMix
//
//  Created by Jacques HU on 26/02/2025.
//

import SwiftUI

struct InGamePlayerRow: View {
    var leftPlayer: Player
    var rightPlayer: Player?
    var rowIndex: Int
    var playingPlayer: Player?
    
    var body: some View {
        HStack {
            InGamePlayer(playerOrder: (rowIndex + rowIndex) + 1, playing: leftPlayer == playingPlayer)
            
            if let _ = rightPlayer {
                Spacer()
                
                InGamePlayer(playerOrder: (rowIndex + rowIndex + 1) + 1, playing: rightPlayer == playingPlayer)
            }
        }
    }
}

#Preview {
    InGamePlayerRow(leftPlayer: Player(id: UUID(), name: ""), rightPlayer: Player(id: UUID(), name: ""), rowIndex: 0, playingPlayer: Player(id: UUID(), name: ""))
}

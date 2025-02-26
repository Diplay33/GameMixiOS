//
//  GamePlayersRow.swift
//  GameMix
//
//  Created by Jacques HU on 05/02/2025.
//

import SwiftUI

struct GamePlayersRow: View {
    @Binding var playersList: [Player]
    
    var player: Player
    
    var body: some View {
        ZStack {
            HStack {
                Text(player.name)
                    .foregroundStyle(Color.p)
                
                Spacer()
            }
            
            Button {
                clearButtonOnPress(player)
            }
            label: {
                Image(systemName: "multiply.circle.fill")
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
        }
        .listRowBackground(Color(uiColor: .systemGroupedBackground).opacity(0.5))
        .transition(.slide)
    }
    
    private func clearButtonOnPress(_ player: Player) {
        withAnimation {
            playersList.removeAll(where: { $0 == player })
        }
    }
}

#Preview {
    GamePlayersRow(playersList: .constant([]), player: Player(id: UUID(), name: ""))
}

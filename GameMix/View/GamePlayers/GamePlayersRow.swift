//
//  GamePlayersRow.swift
//  GameMix
//
//  Created by Jacques HU on 05/02/2025.
//

import SwiftUI

struct GamePlayersRow: View {
    @Binding var playersList: [(UUID, String)]
    
    var player: (UUID, String)
    
    var body: some View {
        ZStack {
            HStack {
                Text(player.1)
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
    
    private func clearButtonOnPress(_ player: (UUID, String)) {
        withAnimation {
            playersList.removeAll(where: { $0 == player })
        }
    }
}

#Preview {
    GamePlayersRow(playersList: .constant([]), player: (UUID(), ""))
}

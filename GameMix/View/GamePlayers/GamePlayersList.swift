//
//  GamePlayersList.swift
//  GameMix
//
//  Created by Jacques HU on 05/02/2025.
//

import SwiftUI

struct GamePlayersList: View {
    @Binding var playersList: [Player]
    
    var body: some View {
        Section(header: playersList.isEmpty ? nil : Text(processPlayersHeaderLabel())) {
            if playersList.isEmpty {
                Text("Aucun joueur saisi")
                    .foregroundStyle(Color.p)
                    .frame(maxWidth: .infinity)
                    .listRowBackground(Color(uiColor: .systemGroupedBackground).opacity(0.5))
            }
            else {
                ForEach(playersList) { player in
                    GamePlayersRow(playersList: $playersList, player: player)
                }
            }
        }
    }
    
    private func processPlayersHeaderLabel() -> String {
        return playersList.count > 1 ? "\(playersList.count) JOUEURS SAISIS" : "1 JOUEUR SAISI"
    }
}

#Preview {
    GamePlayersList(playersList: .constant([]))
}

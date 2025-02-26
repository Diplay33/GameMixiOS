//
//  GamePlayersView.swift
//  GameMix
//
//  Created by Jacques HU on 15/01/2025.
//

import SwiftUI

struct GamePlayersView: View {
    @State var playersList: [Player] = []
    
    var gameMode: GameMode
    
    var body: some View {
        AppBackground {
            VStack {
                List {
                    GamePlayersAddPlayerSection(playersList: $playersList, gameMode: gameMode)
                    
                    GamePlayersList(playersList: $playersList)
                }
                .scrollContentBackground(.hidden)
                .navigationTitle(Text(gameMode.rawValue))
                .navigationBarTitleDisplayMode(.large)
                .scrollDismissesKeyboard(.interactively)
                
                AppBigNavigationLink(label: "Jouer") {
                    InGameView(playersList: playersList)
                }
                .foregroundColor(.lightLabel)
                .tint(.s)
                .padding(.bottom)
                .disabled(playersList.count < (gameMode == .belote ? 4 : 2))
            }
        }
    }
}

#Preview {
    GamePlayersView(gameMode: .belote)
}

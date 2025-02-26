//
//  GamePlayersAddPlayerSection.swift
//  GameMix
//
//  Created by Jacques HU on 05/02/2025.
//

import SwiftUI

struct GamePlayersAddPlayerSection: View {
    @State var playerNameDraft: String = ""
    
    @Binding var playersList: [(UUID, String)]
    
    var gameMode: GameMode
    
    var body: some View {
        Section(header: Text("AJOUTER UN JOUEUR")) {
            ZStack {
                TextField("Saisissez le nom du joueur...", text: $playerNameDraft)
                    .autocorrectionDisabled()
                
                Button(action: addPlayerButtonOnPress) {
                    ZStack {
                        Rectangle()
                            .tint(.s)
                            .frame(width: 28, height: 28)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                            .shadow(color: .white.opacity(0.6), radius: 4, x: -4, y: -4)
                            .shadow(color: .black.opacity(0.1), radius: 3, x: 4, y: 4)
                            
                        Image(systemName: "plus")
                            .foregroundColor(.lightLabel)
                            .font(.system(size: 18, weight: .bold, design: .rounded))
                            .frame(width: 28, height: 28)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .disabled(playersList.count >= (gameMode == .belote ? 4 : 7))
            }
            .listRowBackground(Color(uiColor: .systemGroupedBackground).opacity(0.5))
        }
    }
    
    private func addPlayerButtonOnPress() {
        guard !playerNameDraft.isEmpty else { return }
        withAnimation {
            playersList.append((UUID(), playerNameDraft))
        }
        playerNameDraft = ""
    }
}

#Preview {
    GamePlayersAddPlayerSection(playersList: .constant([]), gameMode: .belote)
}

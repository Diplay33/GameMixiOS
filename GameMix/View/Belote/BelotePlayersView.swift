//
//  BelotePlayersView.swift
//  GameMix
//
//  Created by Jacques HU on 15/01/2025.
//

import SwiftUI

struct BelotePlayersView: View {
    @State var playersList: [(UUID, String)] = []
    @State var playerNameDraft: String = ""
    
    var body: some View {
        AppBackground {
            VStack {
                List {
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
                                        
                                    Image(systemName: "plus")
                                        .foregroundColor(.lightLabel)
                                        .font(.system(size: 18, weight: .bold, design: .rounded))
                                        .frame(width: 28, height: 28)
                                }
                            }
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .disabled(playersList.count >= 4)
                        }
                        .listRowBackground(Color(uiColor: .systemGroupedBackground).opacity(0.5))
                    }
                    
                    if playersList.isEmpty {
                        Text("Aucun joueur saisi")
                            .foregroundStyle(Color.p)
                            .frame(maxWidth: .infinity)
                            .listRowBackground(Color(uiColor: .systemGroupedBackground).opacity(0.5))
                    }
                    else {
                        ForEach(playersList, id: \.0) { player in
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
                    }
                }
                .scrollContentBackground(.hidden)
                .navigationTitle(Text("Belote"))
                .navigationBarTitleDisplayMode(.large)
                
                AppBigNavigationLink(label: "Jouer") {
                    EmptyView()
                }
                .foregroundColor(.lightLabel)
                .tint(.s)
                .padding(.bottom)
                .disabled(playersList.count < 4)
            }
        }
    }
    
    private func addPlayerButtonOnPress() {
        guard !playerNameDraft.isEmpty else { return }
        withAnimation {
            playersList.append((UUID(), playerNameDraft))
        }
        playerNameDraft = ""
    }
    
    private func clearButtonOnPress(_ player: (UUID, String)) {
        withAnimation {
            playersList.removeAll(where: { $0 == player })
        }
    }
}

#Preview {
    BelotePlayersView()
}

//
//  EntryView.swift
//  GameMix
//
//  Created by Jacques HU on 11/12/2024.
//

import SwiftUI

struct EntryView: View {
    @State var isChoosingGame: Bool = false
    
    var body: some View {
        NavigationStack {
            AppBackground {
                VStack {
                    Spacer()
                    
                    VStack {
                        Image("logoPartialTransparent")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal, isChoosingGame ? 100 : 0)
                        
                        Image("logoLabel")
                    }
                    
                    Spacer()
                    
                    if isChoosingGame {
                        AppBigNavigationLink(label: "Belote") {
                            BelotePlayersView()
                        }
                        .foregroundColor(.p)
                        .tint(.lightLabel)
                        
                        AppBigButton(label: "Président") {
                            withAnimation {
                                isChoosingGame.toggle()
                            }
                        }
                        .foregroundColor(.p)
                        .tint(.lightLabel)
                        
                        AppBigButton(label: "Connecter un GamiXer") {
                            withAnimation {
                                isChoosingGame.toggle()
                            }
                        }
                        .foregroundColor(.lightLabel)
                        .tint(.p)
                    }
                    else {
                        AppBigButton(label: "Jouer") {
                            withAnimation {
                                isChoosingGame.toggle()
                            }
                        }
                        .foregroundColor(.lightLabel)
                        .tint(.p)
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    EntryView()
}

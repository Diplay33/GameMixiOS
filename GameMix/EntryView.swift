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
                        .foregroundColor(.primary)
                        .tint(.lightLabel)
                        
                        AppBigButton(label: "Président", foregroundColor: .primary) {
                            withAnimation {
                                isChoosingGame.toggle()
                            }
                        }
                        .foregroundColor(.primary)
                        .tint(.lightLabel)
                        
                        AppBigButton(label: "Pyramide", foregroundColor: .primary) {
                            withAnimation {
                                isChoosingGame.toggle()
                            }
                        }
                        .foregroundColor(.primary)
                        .tint(.lightLabel)
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

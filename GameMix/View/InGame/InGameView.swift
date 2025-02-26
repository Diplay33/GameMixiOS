//
//  InGameView.swift
//  GameMix
//
//  Created by Jacques HU on 05/02/2025.
//

import SwiftUI

struct InGameView: View {
    var playersList: [Player]
    
    var body: some View {
        AppBackground {
            VStack {
                InGameBoard(playersList: playersList)
                    .padding()
                
                VStack(spacing: 15) {
                    AppBigButton(label: "Commencer") {
                        
                    }
                    
                    AppBigButton(label: "Mélanger") {
                        
                    }
                    
                    AppBigButton(label: "Piocher !") {
                        
                    }
                }
            }
            .padding(.vertical)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Image("logoLabel")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30)
                }
            }
        }
    }
}

#Preview {
    InGameView(playersList: [])
}

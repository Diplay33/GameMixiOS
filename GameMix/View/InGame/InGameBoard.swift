//
//  InGameBoard.swift
//  GameMix
//
//  Created by Jacques HU on 26/02/2025.
//

import SwiftUI

struct InGameBoard: View {
    @State var playingPlayer: Player?
    
    var playersList: [Player]
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.t)
                .stroke(Color.s, lineWidth: 10)
                .padding(.horizontal, 50)
                .padding(.bottom, playersList.count % 2 == 0 ? 0 : 50)
            
            VStack(spacing: 0) {
                Spacer()
                
                ForEach(Array(0..<Int(ceil(Double(playersList.count) / 2.0))), id: \.self) { row in
                    InGamePlayerRow(
                        leftPlayer: playersList[row + row],
                        rightPlayer: playersList.indices.contains(row + row + 1) ? playersList[row + row + 1] : nil,
                        rowIndex: row,
                        playingPlayer: playingPlayer
                    )
                    
                    if row != Array(0..<Int(ceil(Double(playersList.count) / 2.0))).last || playersList.count % 2 == 0 {
                        Spacer()
                    }
                }
            }
        }
        .onAppear {
            playingPlayer = playersList.first
        }
    }
}

#Preview {
    InGameBoard(playingPlayer: Player(id: UUID(), name: ""), playersList: [])
}

//
//  InGameBoard.swift
//  GameMix
//
//  Created by Jacques HU on 26/02/2025.
//

import SwiftUI

struct InGameBoard: View {
    var playersList: [(UUID, String)]
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.t)
                .stroke(Color.s, lineWidth: 10)
                .padding(.horizontal, 50)

            
            VStack(spacing: 40) {
                ForEach(Array(0..<Int(ceil(Double(playersList.count) / 2.0))), id: \.self) { row in
                    InGamePlayerRow(leftPlayer: playersList[row * row], rightPlayer: playersList[row * row + 1])
                }
            }
        }
    }
}

#Preview {
    InGameBoard(playersList: [])
}

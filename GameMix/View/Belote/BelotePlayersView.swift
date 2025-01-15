//
//  BelotePlayersView.swift
//  GameMix
//
//  Created by Jacques HU on 15/01/2025.
//

import SwiftUI

struct BelotePlayersView: View {
    var body: some View {
        List {
            Section(header: Text("AJOUTER UN JOUEUR")) {
                TextField("text: .constant(), label: Text()", text: .constant(""))
            }
        }
//        .background(Color.background)
        .navigationTitle(Text("Belote"))
        .navigationBarTitleDisplayMode(.large)
    }
}

#Preview {
    BelotePlayersView()
}

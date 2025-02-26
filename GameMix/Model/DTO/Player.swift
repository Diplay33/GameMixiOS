//
//  Player.swift
//  GameMix
//
//  Created by Jacques HU on 26/02/2025.
//

import Foundation

struct Player: Identifiable, Equatable {
    var id: UUID
    var name: String
    var order: Int?
}

//
//  InGameView.swift
//  GameMix
//
//  Created by Jacques HU on 05/02/2025.
//

import SwiftUI

struct InGameView: View {
    var body: some View {
        AppBackground {
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.t)
                        .stroke(Color.s, lineWidth: 10)
                        .padding(.horizontal, 50)

                    VStack(spacing: 40) {
                        HStack {
                            InGamePlayer(playing: true)
                            
                            Spacer()
                            
                            InGamePlayer(playing: false)
                        }

                        HStack {
                            InGamePlayer(playing: false)
                            
                            Spacer()
                            
                            InGamePlayer(playing: false)
                        }
                    }
                }
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
    InGameView()
}

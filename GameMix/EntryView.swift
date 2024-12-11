//
//  EntryView.swift
//  GameMix
//
//  Created by Jacques HU on 11/12/2024.
//

import SwiftUI

struct EntryView: View {
    var body: some View {
        NavigationStack {
            AppBackground {
                VStack {
                    Spacer()
                    
                    Image("logoCompleteTransparent")
                    
                    Spacer()
                    
                    NavigationLink(destination: Text("Hello, World!")) {
                        ZStack {
                            Rectangle()
                                .cornerRadius(20)
                                .frame(height: 60)
                                .frame(maxWidth: .infinity)
                                .padding(.horizontal)
                            
                            Text("Jouer")
                                .font(.system(size: 32, weight: .bold, design: .rounded))
                                .foregroundStyle(Color.lightLabel)
                        }
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

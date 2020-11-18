//
//  LetterChessGameView.swift
//  Chess
//
//  Created by Golden Thumb on 2020-11-17.
//

import SwiftUI

struct LetterChessGameView: View {
    var letterChessGame: LetterChessGame
    
    var body: some View {
        VStack {
            ForEach(0..<8) { i in
                HStack {
                    ForEach(0..<8) { col in
                        PieceView(piece: letterChessGame.pieceAt(col: col, row: 7 - i))
                    }
                }
            }
        }
            .padding()
            
    }
}

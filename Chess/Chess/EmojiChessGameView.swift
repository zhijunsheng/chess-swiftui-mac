//
//  ContentView.swift
//  Chess
//
//  Created by Golden Thumb on 2020-11-17.
//

import SwiftUI

struct EmojiChessGameView: View {
    var emojiChessGame: EmojiChessGame
    
    var body: some View {
        VStack {
            ForEach(0..<8) { i in
                HStack {
                    ForEach(0..<8) { col in
                        PieceView(piece: emojiChessGame.pieceAt(col: col, row: 7 - i))
                    }
                }
            }
        }
            .padding()
            .font(.largeTitle)
    }
}

struct PieceView: View {
    var piece: ChessGame<String>.Piece?
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8).stroke()
            Text(piece?.content ?? "")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiChessGameView(emojiChessGame: EmojiChessGame())
    }
}

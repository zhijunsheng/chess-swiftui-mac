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
            
    }
}

struct PieceView: View {
    var piece: ChessGame<String>.Piece?
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                RoundedRectangle(cornerRadius: cornerRadius).stroke()
                Text(piece?.content ?? "")
            }
            .font(Font.system(size: min(geometry.size.width, geometry.size.height) * fontScaleFactor))
        }
    }
    
    let cornerRadius: CGFloat = 8
    let fontScaleFactor: CGFloat = 0.9
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiChessGameView(emojiChessGame: EmojiChessGame())
    }
}

//
//  LetterChessGame.swift
//  Chess
//
//  Created by Golden Thumb on 2020-11-17.
//

import Foundation

class LetterChessGame {
    private var chessGame: ChessGame<String> = createChessGame()
    
    static func createChessGame() -> ChessGame<String> {
        return ChessGame<String> { (player, rank) -> String in
            switch rank {
            case .king:
                return player.isWhite ? "k" : "K"
            case .queen:
                return player.isWhite ? "q" : "Q"
            case .rook:
                return player.isWhite ? "r" : "R"
            case .bishop:
                return player.isWhite ? "b" : "B"
            case .knight:
                return player.isWhite ? "n" : "N"
            case .pawn:
                return player.isWhite ? "p" : "P"
            }
        }
    }
    
    func pieceAt(col: Int, row: Int) -> ChessGame<String>.Piece? {
        return chessGame.pieceAt(col: col, row: row)
    }
}

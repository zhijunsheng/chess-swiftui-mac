//
//  EmojiChessGame.swift
//  Chess
//
//  Created by Golden Thumb on 2020-11-17.
//

import Foundation

class EmojiChessGame {
    private var chessGame: ChessGame<String> = EmojiChessGame.createChessGame()
    
    static func createChessGame() -> ChessGame<String> {
        return ChessGame<String> { (player, rank) -> String in
            switch rank {
            case .king:
                return player.isWhite ? "♔" : "♚"
            case .queen:
                return player.isWhite ? "♕" : "♛"
            case .rook:
                return player.isWhite ? "♖" : "♜"
            case .bishop:
                return player.isWhite ? "♗" : "♝"
            case .knight:
                return player.isWhite ? "♘" : "♞"
            case .pawn:
                return player.isWhite ? "♙" : "♟"
            }
        }
    }
    
    func pieceAt(col: Int, row: Int) -> ChessGame<String>.Piece? {
        return chessGame.pieceAt(col: col, row: row)
    }
}

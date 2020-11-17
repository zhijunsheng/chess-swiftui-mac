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
                return player == .white ? "♔" : "♚"
            case .queen:
                return player == .white ? "♕" : "♛"
            case .rook:
                return player == .white ? "♖" : "♜"
            case .bishop:
                return player == .white ? "♗" : "♝"
            case .knight:
                return player == .white ? "♘" : "♞"
            case .pawn:
                return player == .white ? "♙" : "♟"
            }
        }
    }
    
    func pieceAt(col: Int, row: Int) -> ChessGame<String>.Piece? {
        return chessGame.pieceAt(col: col, row: row)
    }
}

//
//  EmojiChessGame.swift
//  Chess
//
//  Created by Golden Thumb on 2020-11-17.
//

import Foundation

/*
 
 MVC: Model View Controller, OO
 
 MVVM: Model View ViewModel, FP
 
 */

class EmojiChessGame {
    static func createPieceContent(player: ChessGame<String>.Player, rank: ChessGame<String>.Rank) -> String {
        return "♟"
    }
    
    private var chessGame: ChessGame<String> = ChessGame<String>(pieceContentFactory: EmojiChessGame.createPieceContent(player:rank:))
    
    func pieceAt(col: Int, row: Int) -> ChessGame<String>.Piece? {
        return chessGame.pieceAt(col: col, row: row)
    }
}

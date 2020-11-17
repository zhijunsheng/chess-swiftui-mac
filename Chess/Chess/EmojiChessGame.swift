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
    private var chessGame: ChessGame<String> = ChessGame<String>()
    
    func pieceAt(col: Int, row: Int) -> ChessGame<String>.Piece? {
        return chessGame.pieceAt(col: col, row: row)
    }
}

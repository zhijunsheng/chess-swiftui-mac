//
//  ChessGame.swift
//  Chess
//
//  Created by Golden Thumb on 2020-11-17.
//

import Foundation

struct ChessGame<PieceContent> {
    private var pieces: Set<Piece>
    
    init() {
        pieces = []
    }
    
    func pieceAt(col: Int, row: Int) -> Piece? {
        for piece in pieces {
            if piece.col == col && piece.row == row {
                return piece
            }
        }
        return nil
    }
    
    enum Player {
        case white
        case black
    }
    
    enum Rank {
        case king
        case queen
        case rook
        case bishop
        case knight
        case pawn
    }
    
    struct Piece: Equatable, Hashable {
        var col: Int
        var row: Int
        var rank: Rank
        var player: Player
        var content: PieceContent
        
        static func ==(lhs: Piece, rhs: Piece) -> Bool {
            return lhs.col == rhs.col && lhs.row == rhs.row && lhs.rank == rhs.rank && lhs.player == rhs.player
        }
        
        func hash(into hasher: inout Hasher) {
            hasher.combine(col)
            hasher.combine(row)
            hasher.combine(rank)
            hasher.combine(player)
        }
    }
}

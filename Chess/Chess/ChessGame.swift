//
//  ChessGame.swift
//  Chess
//
//  Created by Golden Thumb on 2020-11-17.
//

import Foundation

struct ChessGame<PieceContent> {
    private var pieces: Set<Piece>
    
    init(pieceContentFactory: (Player, Rank) -> PieceContent) {
        pieces = []
        initChessBoard(pieceContentFactory: pieceContentFactory)
    }
    
    mutating func movePiece(fromCol: Int, fromRow: Int, toCol: Int, toRow: Int) {
        guard let movingPiece = pieceAt(col: fromCol, row: fromRow) else { return }
        
        pieces.remove(movingPiece)
        pieces.insert(Piece(col: toCol, row: toRow, rank: movingPiece.rank, player: movingPiece.player, content: movingPiece.content))
    }
    
    func pieceAt(col: Int, row: Int) -> Piece? {
        pieces.filter { $0.col == col && $0.row == row }.first
    }
    
    private mutating func initChessBoard(pieceContentFactory: (Player, Rank) -> PieceContent) {
        for i in 0..<8 {
            pieces.insert(Piece(col: i, row: 6, rank: .pawn, player: .black, content: pieceContentFactory(.black, .pawn)))
            pieces.insert(Piece(col: i, row: 1, rank: .pawn, player: .white, content: pieceContentFactory(.white, .pawn)))
        }
        
        for i in 0..<2 {
            pieces.insert(Piece(col: 0 + 7 * i, row: 7, rank: .rook, player: .black, content: pieceContentFactory(.black, .rook)))
            pieces.insert(Piece(col: 0 + 7 * i, row: 0, rank: .rook, player: .white, content: pieceContentFactory(.white, .rook)))
            
            pieces.insert(Piece(col: 1 + 5 * i, row: 7, rank: .knight, player: .black, content: pieceContentFactory(.black, .knight)))
            pieces.insert(Piece(col: 1 + 5 * i, row: 0, rank: .knight, player: .white, content: pieceContentFactory(.white, .knight)))
            
            pieces.insert(Piece(col: 2 + 3 * i, row: 7, rank: .bishop, player: .black, content: pieceContentFactory(.black, .bishop)))
            pieces.insert(Piece(col: 2 + 3 * i, row: 0, rank: .bishop, player: .white, content: pieceContentFactory(.white, .bishop)))
        }
        
        pieces.insert(Piece(col: 3, row: 7, rank: .queen, player: .black, content: pieceContentFactory(.black, .queen)))
        pieces.insert(Piece(col: 3, row: 0, rank: .queen, player: .white, content: pieceContentFactory(.white, .queen)))
        
        pieces.insert(Piece(col: 4, row: 7, rank: .king, player: .black, content: pieceContentFactory(.black, .king)))
        pieces.insert(Piece(col: 4, row: 0, rank: .king, player: .white, content: pieceContentFactory(.white, .king)))
    }
    
    enum Player {
        case white
        case black
        
        var isWhite: Bool {
            self == .white
        }
    }
    
    enum Rank {
        case king
        case queen
        case rook
        case bishop
        case knight
        case pawn
    }
    
    struct Piece: Hashable {
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

extension ChessGame: CustomStringConvertible {
    var description: String {
        var desc = ""
        
        for i in 0..<8 {
            desc += "\(7 - i)"
            for col in 0..<8 {
                if let piece = pieceAt(col: col, row: 7 - i) {
                    desc += " "
                    switch piece.rank {
                    case .king:
                        desc += piece.player.isWhite ? "k" : "K"
                    case .queen:
                        desc += piece.player.isWhite ? "q" : "Q"
                    case .rook:
                        desc += piece.player.isWhite ? "r" : "R"
                    case .bishop:
                        desc += piece.player.isWhite ? "b" : "B"
                    case .knight:
                        desc += piece.player.isWhite ? "n" : "N"
                    case .pawn:
                        desc += piece.player.isWhite ? "p" : "P"
                    }
                } else {
                    desc += " ."
                }
            }
            desc += "\n"
        }
        desc += "  0 1 2 3 4 5 6 7"
        
        return desc
    }
}

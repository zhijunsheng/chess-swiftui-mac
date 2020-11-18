//
//  ChessGameTests.swift
//  ChessTests
//
//  Created by Golden Thumb on 2020-11-18.
//

import XCTest
@testable import Chess

class ChessGameTests: XCTestCase {
    
    func testMovePiece() {
        var chessGame = ChessGameTests.createChessGame()
        XCTAssertNotNil(chessGame.pieceAt(col: 0, row: 1))
        XCTAssertNil(chessGame.pieceAt(col: 0, row: 3))
        chessGame.movePiece(fromCol: 0, fromRow: 1, toCol: 0, toRow: 3)
        print(chessGame)
        XCTAssertNil(chessGame.pieceAt(col: 0, row: 1))
        XCTAssertNotNil(chessGame.pieceAt(col: 0, row: 3))
    }
    
    func testDescription() {
        let chessGame = ChessGameTests.createChessGame()
        XCTAssertTrue(chessGame.description.contains("0 r n b q k b n r"))
    }

    func testPiectAt() {
        let chessGame = ChessGameTests.createChessGame()
        XCTAssertNil(chessGame.pieceAt(col: 0, row: 2))
        
        let bottomLeftRook = chessGame.pieceAt(col: 0, row: 0)
        XCTAssertNotNil(bottomLeftRook)
        XCTAssertTrue(bottomLeftRook!.player.isWhite)
        XCTAssertEqual(.rook, bottomLeftRook!.rank)
    }

    private static func createChessGame() -> ChessGame<String> {
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
}

//
//  ChessGameTests.swift
//  ChessTests
//
//  Created by Golden Thumb on 2020-11-18.
//

import XCTest
@testable import Chess

class ChessGameTests: XCTestCase {
    
    
    func testDescription() {
        let chessGame = ChessGameTests.createChessGame()
        
        print(chessGame)
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

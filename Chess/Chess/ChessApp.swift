//
//  ChessApp.swift
//  Chess
//
//  Created by Golden Thumb on 2020-11-17.
//

import SwiftUI

@main
struct ChessApp: App {
    var body: some Scene {
        WindowGroup {
//            let emojiChessGame = EmojiChessGame()
//            EmojiChessGameView(emojiChessGame: emojiChessGame)
            
            let letterChessGame = LetterChessGame()
            LetterChessGameView(letterChessGame: letterChessGame)
        }
    }
}

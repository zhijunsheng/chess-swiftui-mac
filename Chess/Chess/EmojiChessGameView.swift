//
//  ContentView.swift
//  Chess
//
//  Created by Golden Thumb on 2020-11-17.
//

import SwiftUI

struct EmojiChessGameView: View {
    var body: some View {
        VStack {
            ForEach(0..<8) { _ in
                HStack {
                    ForEach(0..<8) { _ in
                        PieceView()
                    }
                }
            }
        }
            .padding()
            .font(.largeTitle)
    }
}

struct PieceView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8).stroke()
            Text("♟")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiChessGameView()
    }
}

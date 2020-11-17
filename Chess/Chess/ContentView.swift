//
//  ContentView.swift
//  Chess
//
//  Created by Golden Thumb on 2020-11-17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<8) { _ in
                Text("♟")
            }
        }
            .padding()
            .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Egor Svistushkin on 13.06.2022.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}

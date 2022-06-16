//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Egor Svistushkin on 13.06.2022.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}

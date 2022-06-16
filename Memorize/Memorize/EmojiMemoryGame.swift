//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Egor Svistushkin on 15.06.2022.
//

import Foundation

class EmojiMemoryGame: ObservableObject {
    
    static let vehicles = ["🚗", "🚕", "🚌", "🏎", "🚑", "🚁", "🛸", "🚃", "🚂", "✈️", "🛥", "⛵️", "🚠", "🛴", "🚲", "🏍", "🛺", "🚜", "🚀", "🚇", "🚅", "🛶", "🛩", "🛻"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            vehicles[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
//    MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}

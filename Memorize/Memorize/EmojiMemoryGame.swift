//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Egor Svistushkin on 15.06.2022.
//

import Foundation

class EmojiMemoryGame: ObservableObject {
    
    typealias Card = MemoryGame<String>.Card
    
    private static let vehicles = ["🚗", "🚕", "🚌", "🏎", "🚑", "🚁", "🛸", "🚃", "🚂", "✈️", "🛥", "⛵️", "🚠", "🛴", "🚲", "🏍", "🛺", "🚜", "🚀", "🚇", "🚅", "🛶", "🛩", "🛻"].shuffled()
    private static let animals = ["🐶", "🐢", "🐹", "🐻", "🦊", "🐰", "🐼", "🐨", "🦁", "🐮", "🐷", "🐵", "🦄", "🐺", "🦘", "🐊", "🐑", "🐓", "🐁", "🦩", "🦔", "🦜", "🐬", "🐍"].shuffled()
    private static let emojis = ["😃", "😅", "😇", "😉", "😍", "😋", "😝", "🤨", "😎", "🥸", "🥳", "🥺", "😡", "🥶", "🤯", "😱", "😶", "😬", "😴", "😪", "😵‍💫", "😈", "🤠", "🤢"].shuffled()
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 8) { pairIndex in
            vehicles[pairIndex]
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        model.cards
    }
    
//    MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
    
    func restart() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}

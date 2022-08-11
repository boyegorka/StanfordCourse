//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by Egor Svistushkin on 08.08.2022.
//

import SwiftUI

@main
struct EmojiArtApp: App {
    let document = EmojiArtDocument()
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: document)
        }
    }
}

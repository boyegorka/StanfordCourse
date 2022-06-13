//
//  ContentView.swift
//  Memorize
//
//  Created by Egor Svistushkin on 13.06.2022.
//

import SwiftUI

struct ContentView: View {
    
     static let vehicles = ["🚗", "🚕", "🚌", "🏎", "🚑", "🚁", "🛸", "🚃", "🚂", "✈️", "🛥", "⛵️", "🚠", "🛴", "🚲", "🏍", "🛺", "🚜", "🚀", "🚇", "🚅", "🛶", "🛩", "🛻"]
    
     static let animals = ["🐶", "🐢", "🐹", "🐻", "🦊", "🐰", "🐼", "🐨", "🦁", "🐮", "🐷", "🐵", "🦄", "🐺", "🦘", "🐊", "🐑", "🐓", "🐁", "🦩", "🦔", "🦜", "🐬", "🐍"]
    
     static let emojis = ["😃", "😅", "😇", "😉", "😍", "😋", "😝", "🤨", "😎", "🥸", "🥳", "🥺", "😡", "🥶", "🤯", "😱", "😶", "😬", "😴", "😪", "😵‍💫", "😈", "🤠", "🤢"]
    
    
    @State var choose: Array<String> = vehicles
    
//    @State var emojiCount = 18
    
    var body: some View {
        VStack {
            Text("Memorize!")
                .font(.largeTitle)
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(choose[0..<choose.count], id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
                
                .foregroundColor(.red)
            }
            Spacer()
            HStack {
                set1
                Spacer()
                set2
                Spacer()
                set3
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
    
    var set1: some View {
        Button {
            choose = ContentView.vehicles.shuffled()
        } label: {
            VStack {
                Image(systemName: "car")
                Text("Vehicles")
                    .font(.footnote)
            }
        }
    }
    
    var set2: some View {
        Button {
            choose = ContentView.animals.shuffled()
        } label: {
            VStack {
                Image(systemName: "pawprint")
                Text("Animals")
                    .font(.footnote)
            }
        }
    }
    
    var set3: some View {
        Button {
            choose = ContentView.emojis.shuffled()
        } label: {
            VStack {
                Image(systemName: "face.smiling")
                Text("Emojis")
                    .font(.footnote)
            }
        }
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
            .previewInterfaceOrientation(.portrait)
        ContentView()
            .preferredColorScheme(.dark)
    }
}

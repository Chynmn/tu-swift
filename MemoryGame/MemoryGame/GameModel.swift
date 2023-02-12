//
//  GameModel.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2023/02/02.
//

import Foundation

struct Card {
    enum State {
        case open, closed, removed
    }
    let number: Int
    var state = State.open
}

class GameModel: ObservableObject {
    static let cols = 4
    static let rows = 5
    
    @Published var cards = [Card]()
//    var cards: [Card] = []
    
    var openCardIndex: Int?
    @Published var score: Double = 0

    private var pairCount = 0

    init() {
        start()
    }
    
    var over: Bool {
        pairCount == 0
    }
    
    func start() {
        cards = []
        let max = Self.cols * Self.rows / 2
        for number in 1...max {
            cards.append(Card(number: number, state: .closed))
            cards.append(Card(number: number, state: .closed))
        }
        cards.shuffle()
        pairCount = max
        openCardIndex = nil
        score = 0.0
    }
    
    func card(row: Int, col: Int) -> Card {
        let index = row * Self.cols + col
        return cards[index]
    }
    
    func addTimeScore(amount: Double) {
        score += amount
    }
    func toggle(row: Int, col: Int) {
        let index = row * Self.cols + col
        
        if index == openCardIndex {
            return
        }
        
        if let oci = openCardIndex {
            if cards[oci].number == cards[index].number {
                cards[oci].state = .removed
                cards[index].state = .removed
                openCardIndex = nil
                pairCount -= 1
                score -= 10.0
                return
            }
            cards[oci].state = .closed
        }
        
        cards[index].state = .open
        openCardIndex = index
        
        score += 5.0
    }
}

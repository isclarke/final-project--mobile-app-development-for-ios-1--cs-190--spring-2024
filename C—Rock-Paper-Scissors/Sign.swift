//
//  Sign.swift
//  RPS
//
//  Created by Isaiah Clarke on 5/9/24.
//

import Foundation

func randomSign() -> Sign {
    let sign = Int.random(in: 0...2)
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .sissors
    }
}

enum Sign: String {
    case rock = " ✊🏿"
    case paper = "✋🏿"
    case sissors = "✌🏿"
    
    var emojis: String {
        return self.rawValue
    }
}

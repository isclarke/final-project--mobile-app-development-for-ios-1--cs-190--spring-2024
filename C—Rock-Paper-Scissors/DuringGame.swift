//
//  DuringGame.swift
//  RPS
//
//  Created by Isaiah Clarke on 5/9/24.
//

import Foundation

enum GameState {
    case start
       case win
       case lose
       case tie
   }

   func pickSign() -> Sign {
       let signIndex = Int.random(in: 0...2)
       switch signIndex {
       case 0:
           return .rock
       case 1:
           return .paper
       default:
           return .sissors
       }
   }

   extension Sign {
       func compare(with opponent: Sign) -> GameState {
           switch (self, opponent) {
           case (.rock, .sissors), (.paper, .rock), (.sissors, .paper):
               return .win
           case (.rock, .paper), (.paper, .sissors), (.sissors, .rock):
               return .lose
           default:
               return .tie
           }
       }
   }

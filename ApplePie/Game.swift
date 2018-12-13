//
//  Game.swift
//  ApplePie
//
//  Created by Ivan Camilo Triviño López on 12/12/18.
//  Copyright © 2018 Ivan Camilo Triviño López. All rights reserved.
//

import Foundation

struct Game{
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    var formatedWord: String {
        var guessedWord = ""
        
        for letter in word{
            if guessedLetters.contains(letter){
                guessedWord += "\(letter)"
            } else{
                guessedWord += "_"
            }
        }
        
        return guessedWord
    }
    
    mutating func playerGuessed(letter: Character){
        guessedLetters.append(letter)
        
        if !word.contains(letter){
            incorrectMovesRemaining -= 1
        }
    }
}

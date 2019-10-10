//
//  main.swift
//  Hangman
//
//  Created by Alex Paul on 10/15/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

print("""
HANGMAN


Rules
please guess a charater in this hidden word
you have 6 guesses then game over !
what is your name ?
""")

var name = readLine() ?? ""

print("nice to meet you \(name)!")

print("lets start playing !!")

var displayWord = ""
var strikes = 0
let allTheWords = ["able", "about", "account", "acid"]
var dashes = ""
var randomWord: [Character] = Array(allTheWords.randomElement() ?? "cat")
var hiddenWord: [Character] = Array(repeating: "_", count: randomWord.count)

startloop: while hiddenWord != randomWord {
    print("enter a single character  \(String(hiddenWord))")
    let userInput  = Character(readLine() ?? "")
    var indicies: Set<Int> = []
    
    for (index, char) in randomWord.enumerated(){ // 5
        if userInput == char {
            indicies.insert(index)
        }
    }
    for (index, _) in hiddenWord.enumerated(){
        if indicies.contains(index){
            hiddenWord[index] = userInput
        }
    }
    
    if !randomWord.contains(userInput) { // incorrect character
        strikes += 1
        if strikes == 6 {
            print("You lost this round")
            break startloop
        }
    }

    print(String(hiddenWord))
}
print("Thanks for playing")
//for (index, letter ) in randomWord.enumerated(){
//if userInput.contains(letter){
//       .insert()

//
//    }

//let alphabet: [String] = ["abcdefbhijklmonpqrstuvwxyz"]

//if randomWord.contains(<#T##element: Character##Character#>) {
//dashes[index]
//
// create a set so every time the user enters a letter it gets added to the set only allow 6 leters to be in set




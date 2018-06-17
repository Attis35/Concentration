//
//  ViewController.swift
//  Concentration
//
//  Created by Attila Marosi on 2018. 06. 17..
//  Copyright © 2018. Attila Marosi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game = Concentration()
    var flipCounter = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCounter)"
        }
    }
    
    
    @IBOutlet weak var flipCountLabel: UILabel!
    // Az összes kártya outlete
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["🎃","👻","🦀","🐙","🐬","🦖","🐠","🐛","🌏","🌲","🥝","✈️"]
    
    // Ráböksz a kártyára
    @IBAction func touchCard(_ sender: UIButton) {
        flipCounter += 1
        
        if let cardNumber = cardButtons.index(of: sender) { // If-let vs force unwrapping
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("Chosen card not in the array")
        }
    }
    
    
    
    // Megfordítod a kártyát és megadod, milyen emoji melyik gombon legyen
    // Az emoji fajtáját akkor adod meg, amikor meghívod a function-t
    // A kártyát föl-le forgatja, azt vizsgálja, hogy van-e String a button-on vagy sem
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor =  #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}




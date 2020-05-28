//
//  ViewController.swift
//  Dicee-iOS13
//
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView1: UIImageView!
    
 

    // The following happens when the button is pressed
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        diceImageView1.image = diceArray[Int.random(in: 0..<6)]
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
    }
}


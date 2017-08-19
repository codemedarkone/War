//
//  ViewController.swift
//  War
//
//  Created by chris  on 8/17/17.
//  Copyright © 2017 kuronuma studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK:Properties
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightScore = 0
    

    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    var leftScore = 0
    
    let cardNames = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK:Actions
    @IBAction func dealTapped(_ sender: UIButton) {
        
        
        //Randomize left number from 12
        let leftNumber = Int(arc4random_uniform(13))
        
        //Set the left iamge
        leftImageView.image = UIImage(named: cardNames[leftNumber])
        
        //Randomize right number from 12
        let rightNumber = Int(arc4random_uniform(13))
        
        //Set the right image
        rightImageView.image = UIImage(named: cardNames[rightNumber])
        
        //Compare the card numbers
        if leftNumber > rightNumber {
            //left card wins
            
            //Increment the score
            leftScore += 1
            
            //update the label
            leftScoreLabel.text = String(leftScore)
        } else if leftNumber == rightNumber {
            //It's a tie
            
        } else {
            //right card wins
            
            //increment score
            rightScore += 1
            
            //update the label
            rightScoreLabel.text = String(rightScore)
        }
    }
}


//
//  ViewController.swift
//  Rock Paper Scissor
//
//  Created by Le Thanh Son on 01/11/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
   
    let choices = ["rock", "paper", "scissor"]
    var myIntScore = 0
    var enemyIntScore = 0

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var myChoose: UIImageView!
    @IBOutlet weak var enemyChoose: UIImageView!
    
    func enemyAutoChoose() -> String {
        return choices.randomElement()!
    }
    
//user chọn đấm
    @IBAction func chooseRock(_ sender: Any) {
        myChoose.image = UIImage(named: "rock")
        if enemyAutoChoose() == "scissor" {
            enemyChoose.image = UIImage(named: "scissor")
            resultLabel.text = "You win!"
            myIntScore += 1
            myScore.text = String(myIntScore)
        }
        if enemyAutoChoose() == "paper" {
            enemyChoose.image = UIImage(named: "paper")
            resultLabel.text = "You lose!"
            enemyIntScore += 1
            enemyScore.text = String(enemyIntScore)
        }
        if enemyAutoChoose() == "rock" {
            enemyChoose.image = UIImage(named: "rock")
            resultLabel.text = "Tie!"
        }
    }
    
 //user chọn lá
    @IBAction func choosePaper(_ sender: Any) {
        myChoose.image = UIImage(named: "paper")
        if enemyAutoChoose() == "scissor" {
            enemyChoose.image = UIImage(named: "scissor")
            resultLabel.text = "You lose!"
            enemyIntScore += 1
            enemyScore.text = String(enemyIntScore)
        }
        if enemyAutoChoose() == "paper" {
            enemyChoose.image = UIImage(named: "paper")
            resultLabel.text = "Tie!"
        }
        if enemyAutoChoose() == "rock" {
            enemyChoose.image = UIImage(named: "rock")
            resultLabel.text = "You win!"
            myIntScore += 1
            myScore.text = String(myIntScore)
        }
    }
    
    @IBOutlet weak var myScore: UILabel!
    
    
    @IBOutlet weak var enemyScore: UILabel!
    
    
    @IBAction func chooseScissor(_ sender: Any) {
        myChoose.image = UIImage(named: "scissor")
        if enemyAutoChoose() == "scissor" {
            enemyChoose.image = UIImage(named: "scissor")
            resultLabel.text = "Tie!"
        }
        if enemyAutoChoose() == "paper" {
            enemyChoose.image = UIImage(named: "paper")
            resultLabel.text = "You win!"
            myIntScore += 1
            myScore.text = String(myIntScore)
        }
        if enemyAutoChoose() == "rock" {
            enemyChoose.image = UIImage(named: "rock")
            resultLabel.text = "You lose!"
            enemyIntScore += 1
            enemyScore.text = String(enemyIntScore)
        }
    }
    
    

}


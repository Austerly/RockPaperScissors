//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Austin Hesterly on 9/5/16.
//  Copyright © 2016 Rhone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    @IBOutlet weak var playResults: UILabel!
    @IBOutlet weak var playInviteLabel: UILabel!
    
    var counter: Int = 0
    
    let rockChosen = "rock"
    let paperChosen = "paper"
    let scissorsChosen = "scissors"
    
    var playerOneChoice: String = ""
    var playerTwoChoice: String = ""
    var playerTurn: Int = 0
    
    var victoryDeclaration: String = ""
    
    func playerOneChoiceAssigner(itemChosen: String) {
        playerOneChoice = itemChosen
    }
    func playerTwoChoiceAssigner(itemChosen: String) {
        playerTwoChoice = itemChosen
    }
    func declareWinner() {
        switch playerOneChoice {
            case rockChosen :
                if playerTwoChoice == rockChosen {
                    victoryDeclaration = "Tie, both players chose rock"
                } else if playerTwoChoice == paperChosen {
                    victoryDeclaration = "\(player2) wins, paper beats rock"
                } else {
                    victoryDeclaration = "\(player1) wins, rock beats scissors"
                }
            case paperChosen :
                if playerTwoChoice == rockChosen {
                    victoryDeclaration = "\(player1) wins, paper beats rock"
                } else if playerTwoChoice == paperChosen {
                    victoryDeclaration = "Tie, both players chose paper"
                } else {
                    victoryDeclaration = "\(player2) wins, scissors beats paper"
                }
            case scissorsChosen :
                if playerTwoChoice == rockChosen {
                    victoryDeclaration = "\(player2) wins, rock beats scissors"
                } else if playerTwoChoice == paperChosen {
                    victoryDeclaration = "\(player1) wins, paper beats rock"
                } else {
                    victoryDeclaration = "Tie, both players chose scissors"
                }
            default :
                print("Case closed")
        }
        self.playResults.text = victoryDeclaration
        self.playResults?.hidden = false
    }
    @IBAction func rockButtonTouchedUpInside(sender: UIButton) {
        print("rock was chosen")
        if playerTurn == 1 {
            playerOneChoiceAssigner(rockChosen)
            playText()
        } else {
            playerTwoChoiceAssigner(rockChosen)
            declareWinner()
        }
    }
    
    @IBAction func paperButtonTouchedUpInside(sender: UIButton) {
        print("paper was chosen")
        if playerTurn == 1 {
            playerOneChoiceAssigner(paperChosen)
            playText()
        } else {
            playerTwoChoiceAssigner(paperChosen)
            declareWinner()
        }
    }
    
    @IBAction func scissorsButtonTouchedUpInside(sender: UIButton) {
        print("scissors was chosen")
        if playerTurn == 1 {
            playerOneChoiceAssigner(scissorsChosen)
            playText()
        } else {
            playerTwoChoiceAssigner(scissorsChosen)
            declareWinner()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.playResults?.hidden = true
        
        if self.title == "PlaygroundView" {
            playText()
        }
        
        print("UsersController: ", UsersController.sharedController.users)
    }
    
    
    func returnAsString(myNonStringValue: String?) -> String {
        return myNonStringValue!
    }
    let player1: String = UsersController.sharedController.users[0]
    let player2: String = UsersController.sharedController.users[1]
    
    func playText() {
        print(counter)
        if counter % 2 == 0 {
            playInviteLabel.text = "\(player1), click on an option below to play:"
            playerTurn = 1
        }
        else {
            playInviteLabel.text = "\(player2), click on an option below to play:"
            playerTurn = 2
        }
        counter = counter + 1
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


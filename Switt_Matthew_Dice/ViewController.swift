//
//  ViewController.swift
//  Switt_Matthew_Dice
//
//  Created by Matthew Switt on 2019-03-15.
//  Copyright © 2019 Matthew Switt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //does not allow the user to click the reset button when the app is run
        resetButton.isEnabled = false
    }
    
    //declaration of global variables
    var randomNumber = 0
    var randomNumber2 = 0
    var totalDiceScore = 0
    var numberOfTurns = 0
    
    //creates an outlet for the two images to allow them to be changed
    @IBOutlet weak var dieOne: UIImageView!
    @IBOutlet weak var dieTwo: UIImageView!
    
    //creates an outlet for the two buttons
    @IBOutlet weak var rollButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    //creates outlets for the labels where information will be outputted
    @IBOutlet weak var numberOfRolls: UILabel!
    @IBOutlet weak var playerOneScore: UILabel!
    @IBOutlet weak var playerTwoScore: UILabel!
    @IBOutlet weak var totalScore: UILabel!
    
    //the code inside the action will execute when the roll button is clicked
    @IBAction func rollAction(_ sender: UIButton) {
    
        //creates a function that causes an animation to occur when the image for die one is changing
        func DieOne(){
            UIView.transition(with: dieOne, duration: 1.0, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
        
        //creates a function that causes an animation to occur when the image for die two is changing
        func DieTwo(){
             UIView.transition(with: dieTwo, duration: 1.0, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }
        
        //creates a function that generates a random number between one and six for the top die
        func randomNumberOne(){
            randomNumber = Int.random(in: 1...6)
        }
        
        //creates a function that generates a random number between one and six for the bottom die
        func randomNumberTwo(){
             randomNumber2 = Int.random(in: 1...6)
        }
        
        //creates a function when a random number is generated and what should happen and uses if statements
        func rollDieOne(){
            //calls the random number function for the top die so a random number is generated
            randomNumberOne()
            //if the random number is one, the image will change to the image of face one, the transition function for the top die gets called, the value rolled is outputted beside player one score, one is added to the total dice score and then the total dice score is converted to a string and outputted
            if randomNumber == 1 {
                dieOne.image = UIImage(named: "faceOne")
                DieOne()
                playerOneScore.text = "1"
                totalDiceScore += 1
                totalScore.text = String(totalDiceScore)
            }
            //if the random number is two, the image will change to the image of face two, the transition function for the top die gets called, the value rolled is outputted beside player one score, two is added to the total dice score and then the total dice score is converted to a string and outputted
            else if randomNumber == 2 {
                dieOne.image = UIImage(named: "faceTwo")
                DieOne()
                playerOneScore.text = "2"
                totalDiceScore += 2
                totalScore.text = String(totalDiceScore)
            }
            //if the random number is three, the image will change to the image of face three, the transition function for the top die gets called, the value rolled is outputted beside player one score, three is added to the total dice score and then the total dice score is converted to a string and outputted
            else if randomNumber == 3 {
                dieOne.image = UIImage(named: "faceThree")
                DieOne()
                playerOneScore.text = "3"
                totalDiceScore += 3
                totalScore.text = String(totalDiceScore)
            }
            //if the random number is four, the image will change to the image of face four, the transition function for the top die gets called, the value rolled is outputted beside player one score, four is added to the total dice score and then the total dice score is converted to a string and outputted
            else if randomNumber == 4 {
                dieOne.image = UIImage(named: "faceFour")
                DieOne()
                playerOneScore.text = "4"
                totalDiceScore += 4
                totalScore.text = String(totalDiceScore)
            }
            //if the random number is five, the image will change to the image of face five, the transition function for the top die gets called, the value rolled is outputted beside player one score, five is added to the total dice score and then the total dice score is converted to a string and outputted
            else if randomNumber == 5 {
                dieOne.image = UIImage(named: "faceFive")
                DieOne()
                playerOneScore.text = "5"
                totalDiceScore += 5
                totalScore.text = String(totalDiceScore)
            }
            //if the random number is six, the image will change to the image of face six, the transition function for the top die gets called, the value rolled is outputted beside player one score, six is added to the total dice score and then the total dice score is converted to a string and outputted
            else {
                dieOne.image = UIImage(named: "faceSix")
                DieOne()
                playerOneScore.text = "6"
                totalDiceScore += 6
                totalScore.text = String(totalDiceScore)
            }
        }
        
        //the function is then called
        rollDieOne()
        
        //creates a function when a second random number is generated and what should happen
        func rollDieTwo(){
            //calls the random number function for the bottom die so a random number is generated
            randomNumberTwo()
            //uses a switch statement
            switch randomNumber2 {
            //if the random number is one, the image will change to the image of face one, the transition function for the bottom die gets called, the value rolled is outputted beside player two score, one is added to the total dice score and then the total dice score is converted to a string and outputted
            case 1:
                dieTwo.image = UIImage(named: "faceOne")
                DieTwo()
                playerTwoScore.text = "1"
                totalDiceScore += 1
                totalScore.text = String(totalDiceScore)
            //if the random number is two, the image will change to the image of face two, the transition function for the bottom die gets called, the value rolled is outputted beside player two score, two is added to the total dice score and then the total dice score is converted to a string and outputted
            case 2:
                dieTwo.image = UIImage(named: "faceTwo")
                DieTwo()
                playerTwoScore.text = "2"
                totalDiceScore += 2
                totalScore.text = String(totalDiceScore)
            //if the random number is three, the image will change to the image of face three, the transition function for the bottom die gets called, the value rolled is outputted beside player two score, three is added to the total dice score and then the total dice score is converted to a string and outputted
            case 3:
                dieTwo.image = UIImage(named: "faceThree")
                DieTwo()
                playerTwoScore.text = "3"
                totalDiceScore += 3
                totalScore.text = String(totalDiceScore)
            //if the random number is four, the image will change to the image of face four, the transition function for the bottom die gets called, the value rolled is outputted beside player two score, four is added to the total dice score and then the total dice score is converted to a string and outputted
            case 4:
                dieTwo.image = UIImage(named: "faceFour")
                DieTwo()
                playerTwoScore.text = "4"
                totalDiceScore += 4
                totalScore.text = String(totalDiceScore)
            //if the random number is five, the image will change to the image of face five, the transition function for the bottom die gets called, the value rolled is outputted beside player two score, five is added to the total dice score and then the total dice score is converted to a string and outputted
            case 5:
                dieTwo.image = UIImage(named: "faceFive")
                DieTwo()
                playerTwoScore.text = "5"
                totalDiceScore += 5
                totalScore.text = String(totalDiceScore)
            //if the random number is six, the image will change to the image of face six, the transition function for the bottom die gets called, the value rolled is outputted beside player two score, six is added to the total dice score and then the total dice score is converted to a string and outputted
            default:
                dieTwo.image = UIImage(named: "faceSix")
                DieTwo()
                playerTwoScore.text = "6"
                totalDiceScore += 6
                totalScore.text = String(totalDiceScore)
            }
        }
        
        //the function is then called
        rollDieTwo()
        
        //every time the roll button is pressed, the number of turns increases by one
        numberOfTurns += 1
        
        //the number of rolls is converted to a string and then outputted to display the number of turns
        numberOfRolls.text = String(numberOfTurns)
        
        //if the number of turns is 25, the reset button is enabled, the roll button is disabled
        if numberOfTurns == 25 {
            resetButton.isEnabled = true
            rollButton.isEnabled = false
            //creates an alert with a title Game Over and with a message
            let alert = UIAlertController(title: "GAME OVER!", message: "You rolled 25 times. Your final score was \(totalDiceScore). Press OK to continue.", preferredStyle: UIAlertController.Style.alert)
            //adds an action to the alert called OK which allows the user to click it and get rid of the alert
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            //when number of turns equals 25, the alert must pop up
            present(alert, animated: true)
        }
    }
    
    //the code inside the action will execute when the reset button is clicked
    @IBAction func resetAction(_ sender: UIButton) {
        //changes both of the images to the starting die image
        dieOne.image = UIImage(named: "dieImage")
        dieTwo.image = UIImage(named: "dieImage")
        //reset button is disabled
        resetButton.isEnabled = false
        //roll button is enabled
        rollButton.isEnabled = true
        //number of turns double sets to zero
        numberOfTurns = 0
        //dice score double sets to zero
        totalDiceScore = 0
        //number of rolls text sets to zero
        numberOfRolls.text = "0"
        //total dice score text sets to zero
        totalScore.text = "0"
        //player one score text sets to zero
        playerOneScore.text = "0"
        //player two score text sets to zero
        playerTwoScore.text = "0"
    
    }
}


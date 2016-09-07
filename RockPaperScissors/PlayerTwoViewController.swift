//
//  PlayerTwoViewController.swift
//  RockPaperScissors
//
//  Created by Austin Hesterly on 9/5/16.
//  Copyright © 2016 Rhone. All rights reserved.
//

import UIKit



class PlayerTwoViewController: UIViewController {
    
    @IBOutlet weak var playerTwoName: UITextField!
    @IBAction func playerTwoContinueButton(sender: UIButton) {
        let playerTwoUserName = playerTwoName.text!
        UsersController.sharedController.createUser(playerTwoUserName)
        print("UsersController: ", UsersController.sharedController.users)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.hideKeyboardWhenTappedAround()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

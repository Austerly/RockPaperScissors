//
//  UsersController.swift
//  RockPaperScissors
//
//  Created by Austin Hesterly on 9/5/16.
//  Copyright © 2016 Rhone. All rights reserved.
//

import Foundation

class UsersController {
    static let sharedController = UsersController()
    
    init() {
//        let user1 = User(player: "Player 1")
//        let user2 = User(player: "Player 2")
        
//        self.users = [user1, user2]
    }
    
    //Create
    func createUser(userName: String) -> String {
        print("User was created!", userName)
        var user = userName
        
        self.users.append(user)
        
        return user
    }
    
    //Read
    var users = [String]()
    
    //Update
    // - taken care of with pointers
    
    //Delete
    // - not necessary as of now
}
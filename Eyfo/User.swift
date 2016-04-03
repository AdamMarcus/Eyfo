//
//  User.swift
//  Aypho
//
//  Created by Adam Austin on 4/2/16.
//  Copyright © 2016 Adam. All rights reserved.
//

import Foundation
import UIKit

class User {
    let userName: String
    let passWord: String
    var profilePicture: UIImage?
    var posts = [Post]();
    
    init (_userName: String, _passWord: String, _profilePicture: String)
    {
        userName = _userName
        passWord = _passWord
        profilePicture = UIImage(named: _profilePicture)
    }
}

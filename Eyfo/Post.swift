//
//  Post.swift
//  Eyfo
//
//  Created by Adam Austin on 4/2/16.
//  Copyright © 2016 Adam. All rights reserved.
//

import Foundation
import CoreLocation

class Post
{
    struct category
    {
        let index: Int
        let category: String
        
        init (_index: Int, _category: String)
        {
            index = _index
            category = _category
        }
    }
    
    let categoryArray: [category] = [
        category(_index: 0, _category: "Sports"),
        category(_index: 1, _category: "Music"),
        category(_index: 2, _category: "Wildlife"),
        category(_index: 3, _category: "Celebrities")
    ]
    
    struct postTime {
        let date = NSDate()
        let hour = NSCalendarUnit.Hour
        let minute = NSCalendarUnit.Minute
    }
    
    let user: User
    let center: CLLocationCoordinate2D
    let postText: String
    let categoryKey: Int
    let timePosted = postTime()
    let ID: Int
    
    init(_user: User, _mapItem: CLLocationCoordinate2D, _text: String, _categoryKey: Int, _ID: Int)
    {
        self.user = _user
        self.center = _mapItem
        self.postText = _text
        self.categoryKey = _categoryKey
        self.ID = _ID
    }
}
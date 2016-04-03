//
//  MockPosts.swift
//  Eyfo
//
//  Created by Adam Austin on 4/2/16.
//  Copyright © 2016 Adam. All rights reserved.
//

import Foundation
import CoreLocation
import MapKit

var sarah = User(_userName: "Sarah", _passWord: "wasurp", _profilePicture: "sarahProfile")
var adam = User(_userName: "Adam", _passWord: "adamAustin", _profilePicture: "adamProfile")
var alex = User(_userName: "Alex", _passWord: "waqwsurp", _profilePicture: "alexProfile")
var joseph = User(_userName: "Joseph", _passWord: "eew", _profilePicture: "josephProfile")
var hannah = User(_userName: "Hannah", _passWord: "asdf", _profilePicture: "hannahProfile")

class MockPosts
{
    var postArray: [Post] = [
        
        // Cu Hill
        Post(_user: adam, _mapItem: CLLocationCoordinate2DMake(40.0081, 105.2764), _text: "Great Concert", _categoryKey: 1, _ID: 1),
        Post(_user: alex, _mapItem: CLLocationCoordinate2DMake(40.0080, -105.2762), _text: "Great Tyler the Creator Concert! Hes so greaT. And those strobes though. OMG! Gotta love the dude!", _categoryKey: 1, _ID: 1),
        Post(_user: joseph, _mapItem: CLLocationCoordinate2DMake(40.0080, -105.2765), _text: "I love Tyler!", _categoryKey: 1, _ID: 1),
        
        //Bear
        Post(_user: hannah, _mapItem: CLLocationCoordinate2DMake(41.0150, -105.2705), _text: "Bear in Boulder!", _categoryKey: 2, _ID: 2),
        Post(_user: sarah, _mapItem: CLLocationCoordinate2DMake(41.0150, -105.2705), _text: "Just saw a bear!", _categoryKey: 2, _ID: 2),

        
        // Broncos Parrade
        Post(_user: sarah, _mapItem: CLLocationCoordinate2DMake(39.739180, -104.989340), _text: "What a Great Parade! I <3 the Broncos!", _categoryKey: 0, _ID: 3),
        Post(_user: alex, _mapItem: CLLocationCoordinate2DMake(39.736281, -104.989341), _text: "What a Great Parade! I <3 the Broncos!", _categoryKey: 0, _ID: 3),
        Post(_user: sarah, _mapItem: CLLocationCoordinate2DMake(39.739379, -104.987341), _text: "What a Great Parade! I <3 the Broncos!", _categoryKey: 0, _ID: 3),
        Post(_user: sarah, _mapItem: CLLocationCoordinate2DMake(39.739181, -104.988439), _text: "What a Great Parade! I <3 the Broncos!", _categoryKey: 0, _ID: 3),
        Post(_user: sarah, _mapItem: CLLocationCoordinate2DMake(39.739180, -104.989240), _text: "What a Great Parade! I <3 the Broncos!", _categoryKey: 0, _ID: 3),
        Post(_user: sarah, _mapItem: CLLocationCoordinate2DMake(39.738180, -104.989338), _text: "What a Great Parade! I <3 the Broncos!", _categoryKey: 0, _ID: 3),
        Post(_user: sarah, _mapItem: CLLocationCoordinate2DMake(39.737078, -104.989540), _text: "What a Great Parade! I <3 the Broncos!", _categoryKey: 0, _ID: 3),
        Post(_user: sarah, _mapItem: CLLocationCoordinate2DMake(39.739182, -104.989338), _text: "What a Great Parade! I <3 the Broncos!", _categoryKey: 0, _ID: 3),
        
        // Sledding
        Post(_user: joseph, _mapItem: CLLocationCoordinate2DMake(39.992681, -105.290159), _text: "Sledding!", _categoryKey: 0, _ID: 4),
        Post(_user: alex, _mapItem: CLLocationCoordinate2DMake(39.997848, -105.293627), _text: "Great Tyler the Creator Concert! Hes so greaT. And those strobes though. OMG! Gotta love the dude!", _categoryKey: 0, _ID: 4),
        // Ultimate
        Post(_user: hannah, _mapItem: CLLocationCoordinate2DMake(40.027837, -105.286459), _text: "Ultimate Frisbee!", _categoryKey: 0, _ID: 4),
        Post(_user: alex, _mapItem: CLLocationCoordinate2DMake(40.02783, -105.286472), _text: "I <3 Ultimate!", _categoryKey: 0, _ID: 4),
        // Dear
        Post(_user: hannah, _mapItem: CLLocationCoordinate2DMake(40.006244, -105.17382), _text: "DEER!", _categoryKey: 2, _ID: 4),
        Post(_user: alex, _mapItem: CLLocationCoordinate2DMake(40.002342, -105.294709), _text: "I <3 DEER!", _categoryKey: 2, _ID: 4),
        // MOOSE
        Post(_user: hannah, _mapItem: CLLocationCoordinate2DMake(40.016344, -105.287087), _text: "DEER!", _categoryKey: 2, _ID: 4),
        Post(_user: alex, _mapItem: CLLocationCoordinate2DMake(40.017576, -105.294352), _text: "I <3 DEER!", _categoryKey: 2, _ID: 4),
        // Locale band
        Post(_user: alex, _mapItem: CLLocationCoordinate2DMake(40.015432, -105.278393), _text: "local band!", _categoryKey: 1, _ID: 4),
        // CU GAME
        Post(_user: alex, _mapItem: CLLocationCoordinate2DMake(40.009438, -105.265989), _text: "I <3 CU game!", _categoryKey: 0, _ID: 4),
        // Petting Zoo
        Post(_user: alex, _mapItem: CLLocationCoordinate2DMake(39.933245, -105.156820), _text: "petting zoo!", _categoryKey: 2, _ID: 4),
        // Downtown Music
        Post(_user: alex, _mapItem: CLLocationCoordinate2DMake(39.740750, -104.974386), _text: "petting zoo!", _categoryKey: 1, _ID: 4),
        Post(_user: alex, _mapItem: CLLocationCoordinate2DMake(39.740770, -104.977297), _text: "petting zoo!", _categoryKey: 1, _ID: 4),
    ]
}

/*
func sortByDistance(_postsArray: [Post], currentLoc: CLLocationCoordinate2D) -> [Post]
{
    var newArray = [Post]()
    for i in 0..<_postsArray.count
    {
        var j: Int = 0
        while (getDistance(newArray[i], MKMao) < getDistance(newArray[j], ))
        {
            j += 1
        }
        newArray[j] = _postsArray[i]
    }
    return newArray
}

func getDistance(_currentPost: Post, loc: CLLocationCoordinate2D) -> Double
{
    return (_currentPost.center.latitude - loc.latitude) / (_currentPost.center.longitude - loc.longitude)
}*/


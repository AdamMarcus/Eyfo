//
//  CurrentUser.swift
//  Eyfo
//
//  Created by Adam Austin on 4/3/16.
//  Copyright © 2016 Adam. All rights reserved.
//

import Foundation
import CoreLocation
import MapKit

class CurrentUser
{
    let userName = "Adam Austin"
    let myLoc: CLLocationCoordinate2D
    init(_myLoc: CLLocationCoordinate2D)
    {
        myLoc = _myLoc
    }
}
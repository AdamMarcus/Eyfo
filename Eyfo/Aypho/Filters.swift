//
//  Filters.swift
//  Aypho
//
//  Created by Adam Austin on 4/2/16.
//  Copyright © 2016 Adam. All rights reserved.
//

import Foundation
import UIKit

class Filters {
    
    struct Filter {
        let title: String
        let filterGroup: Int;               // Only one filter in a group other than (-1) can be active at a time. Filters in (-1) do not interfere with eachother
        var active: Bool
        init (_title: String, _filterGroup: Int, _active: Bool)
        {
            title = _title
            filterGroup = _filterGroup
            active = _active
        }
    }

    
    var who: [Filter] = [Filter(_title: "Friends", _filterGroup: 1, _active: false), Filter(_title: "Everyone", _filterGroup: 1, _active: false)]
    var how : [Filter] = [Filter(_title: "Near Me (2.5)", _filterGroup: 2, _active: false), Filter(_title: "Near Me (5)", _filterGroup: 2, _active: false), Filter(_title: "Near Me (10)", _filterGroup: 2, _active: false)]
    var what : [Filter] = [Filter(_title: "Music",_filterGroup: -1, _active: false), Filter(_title: "Sports", _filterGroup: -1, _active: false), Filter(_title: "Movies", _filterGroup: -1, _active: false), Filter(_title: "Wildlife", _filterGroup: -1, _active: false)]
    
    //var filters:[[Filter]] = [who, how, what]
    
    var filtersArray: [[Filter]] = [[Filter(_title: "Friends", _filterGroup: 1, _active: false), Filter(_title: "Everyone", _filterGroup: 1, _active: false)], [Filter(_title: "Near Me (2.5)", _filterGroup: 2, _active: false), Filter(_title: "Near Me (5)", _filterGroup: 2, _active: false), Filter(_title: "Near Me (10)", _filterGroup: 2, _active: false)], [Filter(_title: "Music",_filterGroup: -1, _active: false), Filter(_title: "Sports", _filterGroup: -1, _active: false), Filter(_title: "Movies", _filterGroup: -1, _active: false), Filter(_title: "Wildlife", _filterGroup: -1, _active: false)]]
    
    func isActive(_filterName: String) -> Bool
    {
        return findFilter(_filterName).active
    }
    
    func findFilter (_filterName: String) -> Filter
    {
        for i in 0..<filtersArray.count
        {
            for j in 0..<filtersArray[i].count
            {
                if (_filterName == filtersArray[i][j].title)
                {
                    return filtersArray[i][j]
                }
            }
        }
        return Filter(_title: "ALERT", _filterGroup: -2, _active: false)
    }
}

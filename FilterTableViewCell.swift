//
//  FilterTableViewCell.swift
//  Aypho
//
//  Created by Adam Austin on 4/2/16.
//  Copyright © 2016 Adam. All rights reserved.
//

import UIKit

class FilterTableViewCell: UITableViewCell {
    
    var myFilter: Filter?;
        
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

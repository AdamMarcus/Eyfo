//
//  PostsTableViewCell.swift
//  Aypho
//
//  Created by Adam Austin on 4/2/16.
//  Copyright © 2016 Adam. All rights reserved.
//

import UIKit

class PostsTableViewCell: UITableViewCell {

    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var postText: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

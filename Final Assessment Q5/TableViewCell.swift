//
//  TableViewCell.swift
//  Final Assessment Q5
//
//  Created by WuKwok Ho on 17/5/2016.
//  Copyright © 2016 Wu Kwok Ho. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var iconImage: UIImageView!
    
    @IBOutlet weak var movieName: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        iconImage.layer.cornerRadius = 44.5
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

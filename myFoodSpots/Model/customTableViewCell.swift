//
//  customTableViewCell.swift
//  myFoodSpots
//
//  Created by Stefano on 28/03/2018.
//  Copyright © 2018 Stefano. All rights reserved.
//

import UIKit

class customTableViewCell: UITableViewCell {
    

    @IBOutlet weak var Dish: UILabel!
    @IBOutlet weak var Restaurant: UILabel!
    @IBOutlet weak var Place: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}

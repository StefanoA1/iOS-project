//
//  customTableViewCell.swift
//  iOS
//
//  Created by epita on 18/04/2018.
//  Copyright © 2018 epita. All rights reserved.
//

import UIKit

class customTableViewCell: UITableViewCell {

//    var author : String?
//    var title : String?
//    var year : String?
//    var description : String?
    
    @IBOutlet weak var Title: UILabel!
    @IBOutlet weak var Author: UILabel!
    @IBOutlet weak var Year: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

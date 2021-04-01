//
//  categoryElementsCell.swift
//  KashirWords
//
//  Created by Yaseen Majeed on 25/01/20.
//  Copyright © 2020 Yaseen Majeed. All rights reserved.
//

import UIKit

class categoryElementsCell: UITableViewCell {
    //@IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var englishName: UILabel!
    @IBOutlet weak var kashmiriName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        kashmiriName.adjustsFontSizeToFitWidth = true
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

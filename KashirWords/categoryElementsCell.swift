//
//  categoryElementsCell.swift
//  KashirWords
//
//  Created by Yaseen Majeed on 25/01/20.
//  Copyright © 2020 Yaseen Majeed. All rights reserved.
//

import UIKit

class categoryElementsCell: UITableViewCell {
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var nativeName: UILabel!
    @IBOutlet weak var englishName: UILabel!
    @IBOutlet weak var playButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func playSound(_ sender: Any) {
    }
    
}
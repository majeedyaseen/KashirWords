//
//  Extensions.swift
//  KashirWords
//
//  Created by MajeedWorkSpace on 26/09/20.
//  Copyright © 2020 Yaseen Majeed. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionViewCell {
    
    func shadowDecorate() {
        let radius: CGFloat = 10
        contentView.layer.cornerRadius = radius
        contentView.layer.borderWidth = 1
        contentView.layer.borderColor = UIColor.clear.cgColor
        contentView.layer.masksToBounds = true
        contentView.layer.shadowColor = UIColor.black.cgColor
        contentView.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        contentView.layer.shadowRadius = 2.0
        contentView.layer.shadowOpacity = 0.5
        contentView.layer.masksToBounds = true
//        layer.shadowColor = UIColor.black.cgColor
//        layer.shadowOffset = CGSize(width: 0, height: 1.0)
//        layer.shadowRadius = 2.0
//        layer.shadowOpacity = 0.5
//        layer.masksToBounds = false
//        layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: radius).cgPath
//        layer.cornerRadius = radius
    }
}

extension UIImageView {

    func makeRounded() {

        self.layer.borderWidth = 1
        self.layer.masksToBounds = false
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
    }
}

//
//  DesignableView.swift
//  Web To RK Template
//
//  Created by Zaid Pathan on 04/07/18.
//  Copyright © 2018 Applied Informatics. All rights reserved.
//

import UIKit

@IBDesignable class DesignableView: UIControl {
    @IBInspectable var cornerRadius : CGFloat = 0.0 {
        didSet{
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth : CGFloat = 0.0 {
        didSet{
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor : UIColor = UIColor() {
        didSet{
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var shadowRadius : CGFloat = 1.0 {
        didSet{
            layer.shadowRadius = shadowRadius
            layer.masksToBounds = false
        }
    }
    
    @IBInspectable var shadowOpacity : Float = 1.0 {
        didSet{
            layer.shadowOpacity = shadowOpacity
        }
    }
    
    @IBInspectable var shadowColor: UIColor = .clear {
        didSet {
            layer.shadowColor = shadowColor.cgColor
        }
    }
    
    @IBInspectable var shadowOffset: CGSize = .zero {
        didSet {
            layer.shadowOffset = shadowOffset
        }
    }
    
    @IBInspectable var masksToBound: Bool = false {
        didSet {
            layer.masksToBounds = masksToBound
        }
    }
    
    @IBInspectable var bottomCornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = bottomCornerRadius
            layer.maskedCorners = [.layerMinXMaxYCorner , .layerMaxXMaxYCorner]
        }
    }
    
    func applyGradientColors(darkColor: UIColor, midColor: UIColor, lightColor: UIColor){
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.colors = [darkColor,midColor,lightColor]
        //self.applyGradient(colours: [darkColor,midColor,lightColor])
        self.layer.insertSublayer(gradient, at: 0)
        self.clipsToBounds = true
    }
}

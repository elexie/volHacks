//
//  CardView2.swift
//  volApp
//
//  Created by Elexie Munyeneh on 9/29/18.
//  Copyright © 2018 Elexie Munyeneh. All rights reserved.
//

import UIKit

@IBDesignable class CardView2: UIView {
    @IBInspectable var cornerradius : CGFloat = 2
    @IBInspectable var shadowOffsetWidth : CGFloat = 1
    @IBInspectable var shadowOffsetHeight : CGFloat = 5
    @IBInspectable var shadowColor : UIColor = UIColor.black
    @IBInspectable var shadowOpacity : CGFloat = 0.5
    @IBInspectable var bgColor : UIColor = UIColor(white:1, alpha:0.8)


    override func layoutSubviews(){
            layer.cornerRadius = cornerradius
            layer.shadowColor = shadowColor.cgColor
            layer.backgroundColor=bgColor.cgColor
            layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight)
        
            let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerradius)
            layer.shadowPath = shadowPath.cgPath
        
            layer.shadowOpacity = Float(shadowOpacity)
        
    }
    
}



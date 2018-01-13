//
//  ShadowButton.swift
//  T Event Management
//
//  Created by Zahidur Rahman Faisal on 14/1/18.
//  Copyright © 2018 Zahidur Rahman Faisal. All rights reserved.
//

import UIKit

@IBDesignable
class ShadowButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }

//    @IBInspectable var borderWidth: CGFloat = 0 {
//        didSet {
//            layer.borderWidth = borderWidth
//        }
//    }
//
//    @IBInspectable var borderColor: UIColor = UIColor.gray {
//        didSet {
//            layer.borderColor = borderColor.cgColor
//        }
//    }
//
//    @IBInspectable var shadowColor: UIColor = UIColor.gray {
//        didSet {
//            layer.shadowColor = shadowColor.cgColor
//        }
//    }
//
//    @IBInspectable var shadowOpacity: Float = 1.0 {
//        didSet {
//            layer.shadowOpacity = shadowOpacity
//        }
//    }
//
//    @IBInspectable var shadowRadius: CGFloat = 1.0 {
//        didSet {
//            layer.shadowRadius = shadowRadius
//        }
//    }
//
//    @IBInspectable var masksToBounds: Bool = true {
//        didSet {
//            layer.masksToBounds = masksToBounds
//        }
//    }
//
//    @IBInspectable var shadowOffset: CGSize = CGSize.init(width: 12.0, height: 12.0) {
//        didSet {
//            layer.shadowOffset = shadowOffset
//        }
//    }
    
    override func draw(_ rect: CGRect) {
        updateLayerProperties()
    }

    func updateLayerProperties() {
        self.layer.shadowColor = UIColor.darkText.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 6)
        self.layer.shadowOpacity = 0.2
        self.layer.shadowRadius = 10
        self.layer.masksToBounds = false
    }
    
}

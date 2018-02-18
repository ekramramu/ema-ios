//
//  BorderedView.swift
//  T Event Management
//
//  Created by Zahidur Rahman Faisal on 17/2/18.
//  Copyright © 2018 Zahidur Rahman Faisal. All rights reserved.
//

import UIKit

@IBDesignable
class BorderedView: UIView {
    
    @IBInspectable var cornerRadius: CGFloat = 0
    
    @IBInspectable var borderWidth: CGFloat = 0
    
    @IBInspectable var borderColor: UIColor = UIColor.clear
    
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(roundedRect: rect, cornerRadius: cornerRadius)
        path.lineWidth = borderWidth
        
        borderColor.setStroke()
        
        let dashPattern : [CGFloat] = [10, 4]
        path.setLineDash(dashPattern, count: 2, phase: 0)
        path.stroke()
    }

}

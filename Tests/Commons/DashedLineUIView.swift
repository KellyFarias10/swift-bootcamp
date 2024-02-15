//
//  DashedLineUIView.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 08/02/24.
//

import UIKit
class DashedLineView: UIView {
    
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        let dashPattern: [CGFloat] = [2,2] // Adjust the pattern as needed
        
        // Starting point of the dashed line
        path.move(to: CGPoint(x: bounds.minX+40, y: bounds.minY))
        
        // Ending point of the dashed line
        path.addLine(to: CGPoint(x: bounds.minX+40, y: bounds.maxY))
        
        UIColor.black.setStroke() // Change color if needed
        debugPrint("dash",dashPattern,dashPattern.count)
        // Set the pattern for the dashed line
        path.setLineDash(dashPattern, count: dashPattern.count, phase: 0)
        
        // Draw the dashed line
        path.stroke()
    }
}

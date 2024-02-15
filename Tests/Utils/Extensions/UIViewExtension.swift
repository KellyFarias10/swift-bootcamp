//
//  UIViewExtension.swift
//  Tests
//
//  Created by Kelly Jocelyn Farías Gómez on 14/02/24.
//

import UIKit
extension UIView{
    func setup(cornerRadious:Int){
        self.layer.cornerRadius = CGFloat(cornerRadious)
        self.layer.cornerRadius = 10
        self.layer.cornerRadius = 50
        self.clipsToBounds = true
    }
}

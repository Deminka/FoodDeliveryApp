//
//  UIColor + Extension.swift
//  FoodDeliveryApp
//
//  Created by mac on 28.01.2024.
//

import UIKit

extension UIColor {
    
    func hex(_ rgbValue: UInt64) -> UIColor {
        return UIColor(red: ((rgbValue & 0xFF0000) >> 16) / 255.0,
                       green: ((rgbValue & 0xFF0000) >> 8) / 255.0,
                       blue: (rgbValue & 0xFF0000) / 255.0,
                       alpha: CGFloat(1.0))
    }
}

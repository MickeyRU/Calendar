//
//  UIView + Extension.swift
//  Calendar
//
//  Created by Павел Афанасьев on 21.11.2022.
//

import UIKit

extension UIView {
    
    //Метод для работы с hex цветами
    public func hexStringToUIColor (hex: String) -> UIColor {
        
        var cString: String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue: UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    //Метод создания лейблов для ячейки
    public func createLabel (color: String, fontSize: CGFloat, labelText: String) -> UILabel {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = hexStringToUIColor(hex: color)
        label.font = .boldSystemFont(ofSize: fontSize)
        label.text = labelText
        return label
    }
}

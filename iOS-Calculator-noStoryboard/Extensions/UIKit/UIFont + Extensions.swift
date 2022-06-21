//
//  UIFont + Extensions.swift
//  iOS-Calculator-noStoryboard
//
//  Created by Mikhail on 21.06.2022.
//

import UIKit

extension UIFont {
    
    enum CustomFont: String {
            case interLight = "Inter-Light"
            case interRegular = "Inter-Regular"
            case interMedium = "Inter-Medium"
        }

    
    
    static func interMedium16() -> UIFont? {
        return UIFont.init(name: CustomFont.interMedium.rawValue, size: 16)
    }
    
    static func interMedium24() -> UIFont? {
        return UIFont.init(name: CustomFont.interMedium.rawValue, size: 24)
    }
    
    static func interMedium30() -> UIFont? {
        return UIFont.init(name: CustomFont.interMedium.rawValue, size: 30)
    }
    
    static func interMedium34() -> UIFont? {
        return UIFont.init(name: CustomFont.interMedium.rawValue, size: 34)
    }
    
    static func interMedium38() -> UIFont? {
        return UIFont.init(name: CustomFont.interMedium.rawValue, size: 38)
    }

    static func interMedium44() -> UIFont? {
        return UIFont.init(name: CustomFont.interMedium.rawValue, size: 44)
    }
    
    static func interLight90() -> UIFont? {
        return UIFont.init(name: CustomFont.interLight.rawValue, size: 90)
    }
    
    static func interLight50() -> UIFont? {
        return UIFont.init(name: CustomFont.interLight.rawValue, size: 50)
    }
}

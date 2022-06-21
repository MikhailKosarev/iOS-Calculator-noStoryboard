//
//  UIButton + Extensions.swift
//  iOS-Calculator-noStoryboard
//
//  Created by Mikhail on 17.06.2022.
//

import UIKit

extension UIButton {
    static private func makeCalcButton(title: String, titleColor: UIColor = .white, backgroundColor: UIColor) -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.backgroundColor = backgroundColor
        button.titleLabel?.font = .interMedium16()
        return button
    }
    
    static func makeCalcOrangeButton(title: String) -> UIButton {
        return makeCalcButton(title: title, titleColor: .calcWhite, backgroundColor: .calcOrange)
    }
    
    static func makeCalcLightGreyButton(title: String) -> UIButton {
        return makeCalcButton(title: title, titleColor: .calcBlack, backgroundColor: .calcLightGrey)
    }
    
    static func makeCalclDarkGreyButton(title: String) -> UIButton {
        return makeCalcButton(title: title, titleColor: .calcWhite, backgroundColor: .calcDarkGrey)
    }
    
    static func makeCalcScientificDarkGreyButton(title: String) -> UIButton {
        return makeCalcButton(title: title, titleColor: .calcWhite, backgroundColor: .calcScientificDarkGrey)
    }
    
}

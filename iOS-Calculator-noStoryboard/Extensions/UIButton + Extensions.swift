//
//  UIButton + Extensions.swift
//  iOS-Calculator-noStoryboard
//
//  Created by Mikhail on 17.06.2022.
//

import UIKit

extension UIButton {
    static func makeCalcButton(title: String, titleColor: UIColor = .white, backgroundColor: UIColor) -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.backgroundColor = backgroundColor
        let adjustedFont = UIFont.systemFont(ofSize: 40.0, weight: .regular)
        button.titleLabel?.font = UIFontMetrics(forTextStyle: .largeTitle).scaledFont(for: adjustedFont)
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
    
}

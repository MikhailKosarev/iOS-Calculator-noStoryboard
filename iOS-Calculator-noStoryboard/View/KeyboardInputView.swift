//
//  KeyboardInputView.swift
//  iOS-Calculator-noStoryboard
//
//  Created by Mikhail on 18.06.2022.
//

import UIKit

class KeyboardInputView: UIView {
    
    // Divide row
    private let acButton = UIButton.makeCalcLightGreyButton(title: "AC")
    private let plusMinusButton = UIButton.makeCalcLightGreyButton(title: "+/-")
    private let percentButton = UIButton.makeCalcLightGreyButton(title: "%")
    private let divideButton = UIButton.makeCalcOrangeButton(title: "\u{00F7}")
    private lazy var divideRowStackView = UIStackView(arrangedSubviews: [acButton, plusMinusButton, percentButton, divideButton],
                                                      axis: .horizontal,
                                                      distribution: .fillEqually
    )
    
    // Multiply row
    private let sevenButton = UIButton.makeCalclDarkGreyButton(title: "7")
    private let eightButton = UIButton.makeCalclDarkGreyButton(title: "8")
    private let nineButton = UIButton.makeCalclDarkGreyButton(title: "9")
    private let multiplyButton = UIButton.makeCalcOrangeButton(title: "\u{00D7}")
    private lazy var multiplyRowStackView = UIStackView(arrangedSubviews: [sevenButton, eightButton, nineButton, multiplyButton],
                                                        axis: .horizontal,
                                                        distribution: .fillEqually
    )
    // Minus row
    private let fourButton = UIButton.makeCalclDarkGreyButton(title: "4")
    private let fiveButton = UIButton.makeCalclDarkGreyButton(title: "5")
    private let sixButton = UIButton.makeCalclDarkGreyButton(title: "6")
    private let minusButton = UIButton.makeCalcOrangeButton(title: "\u{2212}")
    private lazy var minusRowStackView = UIStackView(arrangedSubviews: [fourButton, fiveButton, sixButton, minusButton],
                                                     axis: .horizontal,
                                                     distribution: .fillEqually
    )
    
    // Plus row
    private let oneButton = UIButton.makeCalclDarkGreyButton(title: "1")
    private let twoButton = UIButton.makeCalclDarkGreyButton(title: "2")
    private let threeButton = UIButton.makeCalclDarkGreyButton(title: "3")
    private let plusButton = UIButton.makeCalcOrangeButton(title: "\u{002B}")
    private lazy var plusRowStackView = UIStackView(arrangedSubviews: [oneButton, twoButton, threeButton, plusButton],
                                                    axis: .horizontal,
                                                    distribution: .fillEqually
    )
    
    // Equal row
    private let zeroButton = UIButton.makeCalclDarkGreyButton(title: "0")
    private let pointButton = UIButton.makeCalclDarkGreyButton(title: ",")
    private let equalButton = UIButton.makeCalcOrangeButton(title: "\u{003D}")
    private lazy var equalAndPointStackView = UIStackView(arrangedSubviews: [pointButton, equalButton],
                                                          axis: .horizontal,
                                                          distribution: .fillEqually
    )
    private lazy var equalRowStackView = UIStackView(arrangedSubviews: [zeroButton, equalAndPointStackView],
                                                     axis: .horizontal,
                                                     distribution: .fillEqually
    )
    
    // Buttons stackView
    private lazy var keyboardInputStackView = UIStackView(arrangedSubviews: [divideRowStackView,
                                                                      multiplyRowStackView,
                                                                      minusRowStackView,
                                                                      plusRowStackView,
                                                                      equalRowStackView],
                                                   axis: .vertical,
                                                   distribution: .fillEqually)
    
    // Portrait buttons array
    private lazy var portraitButtonArray = [acButton, plusMinusButton, percentButton, divideButton,
                                            sevenButton, eightButton, nineButton, multiplyButton,
                                            fourButton, fiveButton, sixButton, minusButton,
                                            oneButton, twoButton, threeButton, plusButton,
                                            zeroButton, pointButton, equalButton]
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setConstraints()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        addSubview(keyboardInputStackView)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            keyboardInputStackView.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            keyboardInputStackView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            keyboardInputStackView.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            keyboardInputStackView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
            
//            oneButton.heightAnchor.constraint(equalToConstant: oneButton.frame.width)
        ])
    }
    
    func roundButtons() {
        //TODO: find an esy way to round buttons and to equal the height
        // make the height of oneButton the buttons equal to the width. And all the buttons become square
        NSLayoutConstraint(item: oneButton, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: oneButton, attribute: NSLayoutConstraint.Attribute.width, multiplier: 1.0, constant: 0).isActive = true
        
        portraitButtonArray.map { $0.layer.cornerRadius = oneButton.frame.width / 2 }
//        portraitButtonArray.map { $0.layer.cornerRadius = $0.frame.height / 2 }
    }
}

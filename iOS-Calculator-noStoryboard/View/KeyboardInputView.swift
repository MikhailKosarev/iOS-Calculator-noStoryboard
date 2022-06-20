//
//  KeyboardInputView.swift
//  iOS-Calculator-noStoryboard
//
//  Created by Mikhail on 18.06.2022.
//

import UIKit

class KeyboardInputView: UIView {
    
    // Divide row
    //landscape
    private let leftParenthesisButton = UIButton.makeCalcScientificDarkGreyButton(title: "(")
    private let rightParenthesisButton = UIButton.makeCalcScientificDarkGreyButton(title: ")")
    private let memoryClearButton = UIButton.makeCalcScientificDarkGreyButton(title: "mc")
    private let memoryAddButton = UIButton.makeCalcScientificDarkGreyButton(title: "m+")
    private let memorySubtractButton = UIButton.makeCalcScientificDarkGreyButton(title: "m-")
    private let memoryRecallButton = UIButton.makeCalcScientificDarkGreyButton(title: "mr")
    //portrait
    private let acButton = UIButton.makeCalcLightGreyButton(title: "AC")
    private let plusMinusButton = UIButton.makeCalcLightGreyButton(title: "\u{207A}\u{2044}\u{208B}")
    private let percentButton = UIButton.makeCalcLightGreyButton(title: "%")
    private let divideButton = UIButton.makeCalcOrangeButton(title: "\u{00F7}")
    private lazy var divideRowStackView = UIStackView(arrangedSubviews:
                                                        [leftParenthesisButton, rightParenthesisButton, memoryClearButton, memoryAddButton, memorySubtractButton, memoryRecallButton,
                                                         acButton, plusMinusButton, percentButton, divideButton],
                                                      axis: .horizontal,
                                                      distribution: .fillEqually
    )
    
    // Multiply row
    //landscape
    private let twoNDButton = UIButton.makeCalcScientificDarkGreyButton(title: "2\u{207F}\u{1D48}")
    private let xSquareButton = UIButton.makeCalcScientificDarkGreyButton(title: "x\u{00B2}")
    private let xCubeButton = UIButton.makeCalcScientificDarkGreyButton(title: "x\u{00B3}")
    private let ythPowerOfXButton = UIButton.makeCalcScientificDarkGreyButton(title: "x\u{02B8}")
    private let eToThePowerOfXButton = UIButton.makeCalcScientificDarkGreyButton(title: "e\u{02E3}")
    private let tenToThePowerOfXButton = UIButton.makeCalcScientificDarkGreyButton(title: "10\u{02E3}")
    //portrait
    private let sevenButton = UIButton.makeCalclDarkGreyButton(title: "7")
    private let eightButton = UIButton.makeCalclDarkGreyButton(title: "8")
    private let nineButton = UIButton.makeCalclDarkGreyButton(title: "9")
    private let multiplyButton = UIButton.makeCalcOrangeButton(title: "\u{00D7}")
    private lazy var multiplyRowStackView = UIStackView(arrangedSubviews:
                                                            [twoNDButton, xSquareButton, xCubeButton, ythPowerOfXButton, eToThePowerOfXButton, tenToThePowerOfXButton,
                                                             sevenButton, eightButton, nineButton, multiplyButton],
                                                        axis: .horizontal,
                                                        distribution: .fillEqually
    )
    
    // Minus row
    // landscape
    private let inverseOfXButton = UIButton.makeCalcScientificDarkGreyButton(title: "\u{00B9}\u{2044}\u{2093}")
    private let squareRootOfXButton = UIButton.makeCalcScientificDarkGreyButton(title: "\u{221A}x")
    private let cubeRootOfXButton = UIButton.makeCalcScientificDarkGreyButton(title: "\u{221B}\u{2044}x")
    private let ythRootOfXButton = UIButton.makeCalcScientificDarkGreyButton(title: "\u{02B8}\u{221A}x")
    private let naturalLogarithmButton = UIButton.makeCalcScientificDarkGreyButton(title: "ln")
    private let commonLogarithmButton = UIButton.makeCalcScientificDarkGreyButton(title: "log\u{2081}\u{2080}")
    // portrait
    private let fourButton = UIButton.makeCalclDarkGreyButton(title: "4")
    private let fiveButton = UIButton.makeCalclDarkGreyButton(title: "5")
    private let sixButton = UIButton.makeCalclDarkGreyButton(title: "6")
    private let minusButton = UIButton.makeCalcOrangeButton(title: "\u{2212}")
    private lazy var minusRowStackView = UIStackView(arrangedSubviews:
                                                        [inverseOfXButton, squareRootOfXButton, cubeRootOfXButton, ythRootOfXButton, naturalLogarithmButton, commonLogarithmButton,
                                                         fourButton, fiveButton, sixButton, minusButton],
                                                     axis: .horizontal,
                                                     distribution: .fillEqually
    )
    
    // Plus row
    // landscape
    private let factorialOfXButton = UIButton.makeCalcScientificDarkGreyButton(title: "x!")
    private let sineButton = UIButton.makeCalcScientificDarkGreyButton(title: "sin")
    private let cosineButton = UIButton.makeCalcScientificDarkGreyButton(title: "cos")
    private let tagButton = UIButton.makeCalcScientificDarkGreyButton(title: "tan")
    private let eulersNumberButton = UIButton.makeCalcScientificDarkGreyButton(title: "e")
    private let enterExponentButton = UIButton.makeCalcScientificDarkGreyButton(title: "EE")
    // portrait
    private let oneButton = UIButton.makeCalclDarkGreyButton(title: "1")
    private let twoButton = UIButton.makeCalclDarkGreyButton(title: "2")
    private let threeButton = UIButton.makeCalclDarkGreyButton(title: "3")
    private let plusButton = UIButton.makeCalcOrangeButton(title: "\u{002B}")
    private lazy var plusRowStackView = UIStackView(arrangedSubviews:
                                                        [factorialOfXButton, sineButton, cosineButton, tagButton, eulersNumberButton, enterExponentButton,
                                                         oneButton, twoButton, threeButton, plusButton],
                                                    axis: .horizontal,
                                                    distribution: .fillEqually
    )
    
    // Equal row
    // landscape
    private let radianButton = UIButton.makeCalcScientificDarkGreyButton(title: "Rad")
    private let hyberbolicSineButton = UIButton.makeCalcScientificDarkGreyButton(title: "sinh")
    private let hyperbolicCosineButton = UIButton.makeCalcScientificDarkGreyButton(title: "cosh")
    private let hyperbolicTanButton = UIButton.makeCalcScientificDarkGreyButton(title: "tanh")
    private let piButton = UIButton.makeCalcScientificDarkGreyButton(title: "\u{03C0}")
    private let randomNumberButton = UIButton.makeCalcScientificDarkGreyButton(title: "Rand")
    // portrait
    private let zeroButton = UIButton.makeCalclDarkGreyButton(title: "0")
    private let pointButton = UIButton.makeCalclDarkGreyButton(title: ",")
    private let equalButton = UIButton.makeCalcOrangeButton(title: "\u{003D}")
    
    private lazy var equalRowFunctionsStackView = UIStackView(arrangedSubviews: [radianButton, hyberbolicSineButton, hyperbolicCosineButton, hyperbolicTanButton, piButton, randomNumberButton],
                                                              axis: .horizontal,
                                                              distribution: .fillEqually)
    //without "zero button"
    private lazy var equalAndPointStackView = UIStackView(arrangedSubviews: [pointButton, equalButton],
                                                          axis: .horizontal,
                                                          distribution: .fillEqually
    )
    
    private lazy var equalRowStackView = UIStackView(arrangedSubviews: [equalRowFunctionsStackView, zeroButton, equalAndPointStackView],
                                                     axis: .horizontal,
                                                     distribution: .fillProportionally
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

//
//  KeyboardInputView.swift
//  iOS-Calculator-noStoryboard
//
//  Created by Mikhail on 18.06.2022.
//

import UIKit

class KeyboardInputView: UIView {
    
    public enum Metrics {
        static let portraitSpacing: CGFloat = 16.0
        static let landscapeSpacing: CGFloat = 8.0
    }
    
    //MARK: - Divide row
    //landscape
    private let leftParenthesisButton = UIButton.makeCalcScientificDarkGreyButton(title: "(")
    private let rightParenthesisButton = UIButton.makeCalcScientificDarkGreyButton(title: ")")
    private let memoryClearButton = UIButton.makeCalcScientificDarkGreyButton(title: "mc")
    private let memoryAddButton = UIButton.makeCalcScientificDarkGreyButton(title: "m+")
    private let memorySubtractButton = UIButton.makeCalcScientificDarkGreyButton(title: "m-")
    private let memoryRecallButton = UIButton.makeCalcScientificDarkGreyButton(title: "mr")
    
    //portrait
    private let acButton = UIButton.makeCalcLightGreyButton(title: "AC")
    private let plusMinusButton = UIButton.makeCalcLightGreyButton(title: "\u{207A}\u{2044}\u{002D}")
    private let percentButton = UIButton.makeCalcLightGreyButton(title: "%")
    private let divideButton = UIButton.makeCalcOrangeButton(title: "\u{00F7}")
    private lazy var divideRowStackView = UIStackView(arrangedSubviews:
                                                        [leftParenthesisButton, rightParenthesisButton, memoryClearButton, memoryAddButton, memorySubtractButton, memoryRecallButton,
                                                         acButton, plusMinusButton, percentButton, divideButton],
                                                      axis: .horizontal,
                                                      distribution: .fillEqually
    )
    
    //MARK: - Multiply row
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
    
    //MARK: - Minus row
    // landscape
    private let inverseOfXButton = UIButton.makeCalcScientificDarkGreyButton(title: "\u{00B9}\u{2044}\u{2093}")
    private let squareRootOfXButton = UIButton.makeCalcScientificDarkGreyButton(title: "\u{221A}x")
    private let cubeRootOfXButton = UIButton.makeCalcScientificDarkGreyButton(title: "\u{221B}x")
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
    
    //MARK: - Plus row
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
    
    //MARK: - Equal row
    // landscape
    private let radianButton = UIButton.makeCalcScientificDarkGreyButton(title: "Rad")
    private let hyberbolicSineButton = UIButton.makeCalcScientificDarkGreyButton(title: "sinh")
    private let hyperbolicCosineButton = UIButton.makeCalcScientificDarkGreyButton(title: "cosh")
    private let hyperbolicTanButton = UIButton.makeCalcScientificDarkGreyButton(title: "tanh")
    private let piButton = UIButton.makeCalcScientificDarkGreyButton(title: "\u{03C0}")
    private let randomNumberButton = UIButton.makeCalcScientificDarkGreyButton(title: "Rand")
    
    // portrait
    private let zeroButton = UIButton.makeCalclDarkGreyButton(title: "0")
    private let commaButton = UIButton.makeCalclDarkGreyButton(title: ",")
    private let equalButton = UIButton.makeCalcOrangeButton(title: "\u{003D}")
    
    //stacks to fill the stackView equally with zeroButton
    private lazy var radAndSinhStackView = UIStackView(arrangedSubviews: [radianButton, hyberbolicSineButton],
                                                       axis: .horizontal,
                                                       distribution: .fillEqually)
    private lazy var coshAndTanhStackView = UIStackView(arrangedSubviews: [hyperbolicCosineButton, hyperbolicTanButton],
                                                        axis: .horizontal,
                                                        distribution: .fillEqually)
    private lazy var piAndRandStackView = UIStackView(arrangedSubviews: [piButton, randomNumberButton],
                                                      axis: .horizontal,
                                                      distribution: .fillEqually)
    private lazy var equalAndPointStackView = UIStackView(arrangedSubviews: [commaButton, equalButton],
                                                          axis: .horizontal,
                                                          distribution: .fillEqually
    )
    
    private lazy var equalRowStackView = UIStackView(arrangedSubviews: [radAndSinhStackView, coshAndTanhStackView, piAndRandStackView, zeroButton, equalAndPointStackView],
                                                     axis: .horizontal,
                                                     distribution: .fillEqually
    )
    //MARK: - keyboardInputStackView
    // Buttons stackView
    private lazy var keyboardInputStackView = UIStackView(arrangedSubviews: [divideRowStackView,
                                                                             multiplyRowStackView,
                                                                             minusRowStackView,
                                                                             plusRowStackView,
                                                                             equalRowStackView],
                                                          axis: .vertical,
                                                          distribution: .fillEqually)
    
    
    //MARK: - Button arrays
    // Orange buttons array
    private lazy var orangeButtonArray = [divideButton, multiplyButton, minusButton, plusButton, equalButton]
    
    // Light grey buttons aray
    private lazy var lightGreyButtonArray = [acButton, plusMinusButton, percentButton]
    
    // Dark grey buttons array
    private lazy var darkGreyButtonArray = [sevenButton, eightButton, nineButton, fourButton, fiveButton, sixButton, oneButton, twoButton, threeButton, zeroButton, commaButton,]
    
    // Portrait buttons array
    private lazy var portraitButtonArray = orangeButtonArray + lightGreyButtonArray + darkGreyButtonArray
    
    // Scientific buttons array
    private lazy var scientificButtonArray = [leftParenthesisButton, rightParenthesisButton, memoryClearButton, memoryAddButton, memorySubtractButton, memoryRecallButton,
                                              twoNDButton, xSquareButton, xCubeButton, ythPowerOfXButton, eToThePowerOfXButton, tenToThePowerOfXButton,
                                              inverseOfXButton, squareRootOfXButton, cubeRootOfXButton, ythRootOfXButton, naturalLogarithmButton, commonLogarithmButton,
                                              factorialOfXButton, sineButton, cosineButton, tagButton, eulersNumberButton, enterExponentButton,
                                              radianButton, hyberbolicSineButton, hyperbolicCosineButton, hyperbolicTanButton, piButton, randomNumberButton]
    
    // Scientific stacks array
    private lazy var scientificStackArray = [radAndSinhStackView, coshAndTanhStackView, piAndRandStackView]
    
    //MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    //MARK: - Constraints
    private lazy var commonConstraints: [NSLayoutConstraint] = {
        return  [
            keyboardInputStackView.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            keyboardInputStackView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            keyboardInputStackView.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            keyboardInputStackView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
        ]
    }()
    
    private lazy var portraitConstraints: [NSLayoutConstraint] = {
        return [ oneButton.heightAnchor.constraint(equalTo: oneButton.widthAnchor, multiplier: 1.0) ]
    }()
    
    
    //MARK: - Methods
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layoutIfNeeded()
        roundButtons()
    }
    
    private func setupView() {
        addSubview(keyboardInputStackView)
        NSLayoutConstraint.activate(commonConstraints)
        setButtonsTarget()
    }
    
    func roundButtons() {
        //TODO: think about an easier way to round buttons and to equal the height
        
        // make the height of oneButton the buttons equal to the width. And all the buttons become square
        let cornerRaduius = oneButton.frame.height / 2
        portraitButtonArray.forEach {
            $0.layer.cornerRadius = cornerRaduius
        }
        scientificButtonArray.forEach { $0.layer.cornerRadius = cornerRaduius
        }
    }
    
    //show or hide scientific keyboard
    func configureScientificKeyboard(for size: CGSize) {
        if size.width < size.height {
            // PORTRAIT MODE
            // activate equal height and width for buttons
            NSLayoutConstraint.activate(portraitConstraints)
            
            //hide scientific keyboard
            scientificStackArray.forEach { $0.isHidden = true }
            scientificButtonArray.forEach { $0.isHidden = true }
            
            // increase font size of portrait keyboard
            orangeButtonArray.forEach { $0.titleLabel?.font = .interMedium44() }
            lightGreyButtonArray.forEach { $0.titleLabel?.font = .interMedium34() }
            darkGreyButtonArray.forEach { $0.titleLabel?.font = .interMedium38() }
            
            // set bigger stackView spacing
            keyboardInputStackView.spacing = Metrics.portraitSpacing
            keyboardInputStackView.arrangedSubviews.forEach {
                if let stackView = $0 as? UIStackView {
                    stackView.spacing = Metrics.portraitSpacing
                }
            }
            equalRowStackView.arrangedSubviews.forEach {
                if let stackView = $0 as? UIStackView {
                    stackView.spacing = Metrics.portraitSpacing
                }
            }
        } else {
            // LANDSCAPE MODE
            // deactivate equal height and width for buttons
            NSLayoutConstraint.deactivate(portraitConstraints)
            
            //show scientific keyboard
            scientificStackArray.forEach { $0.isHidden = false }
            scientificButtonArray.forEach { $0.isHidden = false }
            
            // decrease font size of portrait keyboard
            orangeButtonArray.forEach { $0.titleLabel?.font = .interMedium30() }
            lightGreyButtonArray.forEach { $0.titleLabel?.font = .interMedium24() }
            darkGreyButtonArray.forEach { $0.titleLabel?.font = .interMedium24() }
            
            // set smaller stackView spacing
            keyboardInputStackView.spacing = Metrics.landscapeSpacing
            keyboardInputStackView.arrangedSubviews.forEach {
                if let stackView = $0 as? UIStackView {
                    stackView.spacing = Metrics.landscapeSpacing
                }
            }
            equalRowStackView.arrangedSubviews.forEach {
                if let stackView = $0 as? UIStackView {
                    stackView.spacing = Metrics.landscapeSpacing
                }
            }
        }
    }
    
    private func setButtonsTarget() {
        orangeButtonArray.forEach{ $0.addTarget(self, action: #selector(orangeButtonTapped), for: .touchUpInside) }
        lightGreyButtonArray.forEach { $0.addTarget(self, action: #selector(lightGreyButtonTapped), for: .touchUpInside) }
        darkGreyButtonArray.forEach { $0.addTarget(self, action: #selector(darkGreyButtonTapped), for: .touchUpInside)}
        scientificButtonArray.forEach { $0.addTarget(self, action: #selector(scientificDarkGreyButtonTapped), for: .touchUpInside)}
    }
}

//MARK: - Buttons tapped functions

extension KeyboardInputView {
    @objc func orangeButtonTapped(_ sender: UIButton) {
        //TODO: What is the better animation?
//        UIView.transition(with: zeroButton, duration: 0.5, options: .curveEaseInOut, animations: {
//            sender.backgroundColor = .calcOrangeButtonTapped
//        })
//        UIView.transition(with: zeroButton, duration: 0.5, options: .curveEaseInOut, animations: {
//            sender.backgroundColor = .calcOrange
//        })
        UIView.animate(withDuration: 0.25, delay: 0.0, options:[.autoreverse, .allowUserInteraction], animations: {
            sender.backgroundColor = .calcOrangeButtonTapped
         }, completion: { (finished) in
             sender.backgroundColor = .calcOrange
         })
    }
    
    @objc func lightGreyButtonTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.25, delay: 0.0, options:[.autoreverse, .allowUserInteraction], animations: {
            sender.backgroundColor = .calcLightGreyButtonTapped
         }, completion: { (finished) in
             sender.backgroundColor = .calcLightGrey
         })
    }
    
    @objc func darkGreyButtonTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.25, delay: 0.0, options:[.autoreverse, .allowUserInteraction], animations: {
            sender.backgroundColor = .calcDarkGreyButtonTapped
         }, completion: { (finished) in
             sender.backgroundColor = .calcDarkGrey
         })
    }
    
    @objc func scientificDarkGreyButtonTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.25, delay: 0.0, options:[.autoreverse, .allowUserInteraction], animations: {
            sender.backgroundColor = .calcScientificDarkGreyButtonTapped
         }, completion: { (finished) in
             sender.backgroundColor = .calcScientificDarkGrey
         })
    }
}

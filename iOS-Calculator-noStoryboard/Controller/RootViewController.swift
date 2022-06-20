//
//  ViewController.swift
//  iOS-Calculator-noStoryboard
//
//  Created by Mikhail on 17.06.2022.
//

import UIKit

class RootViewController: UIViewController {
    private let displayOutputView: DisplayOutputView = {
        let view = DisplayOutputView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let keyboardInputView: KeyboardInputView = {
        let view = KeyboardInputView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setConstraints()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
//        keyboardInputView.roundButtons()
    }
    
    private func setupView() {
        view.addSubview(displayOutputView)
        view.addSubview(keyboardInputView)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            displayOutputView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            displayOutputView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            displayOutputView.bottomAnchor.constraint(equalTo: keyboardInputView.topAnchor),
            
            keyboardInputView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            keyboardInputView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
            keyboardInputView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
        ])
    }


}


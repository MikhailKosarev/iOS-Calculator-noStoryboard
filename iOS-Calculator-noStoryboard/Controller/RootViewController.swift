//
//  ViewController.swift
//  iOS-Calculator-noStoryboard
//
//  Created by Mikhail on 17.06.2022.
//

import UIKit

class RootViewController: UIViewController {
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
    
    
    private func setupView() {
        view.addSubview(keyboardInputView)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            keyboardInputView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            keyboardInputView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
            keyboardInputView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
        ])
    }


}


//
//  ViewController.swift
//  iOS-Calculator-noStoryboard
//
//  Created by Mikhail on 17.06.2022.
//

import UIKit

class RootViewController: UIViewController {
    
    //show or hide scientific keyboard when run the app
    private var initialScientificKeyboardSetup = false
    
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

    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setConstraints()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        //first setup
        if !initialScientificKeyboardSetup {
            keyboardInputView.configureScientificKeyboard(for: view.bounds.size)
            displayOutputView.configureDisplayOutput(for: view.bounds.size)
            initialScientificKeyboardSetup = true
        }
    }
    
    //TODO: think about necessity of this function
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(true)
//        keyboardInputView.roundButtons()
//    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        if size != view.bounds.size {
            keyboardInputView.configureScientificKeyboard(for: size)
            displayOutputView.configureDisplayOutput(for: size)
        }
    }
    
    //MARK: - Setup
    private func setupView() {
        view.addSubview(displayOutputView)
        view.addSubview(keyboardInputView)
    }
    
    
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            displayOutputView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            displayOutputView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            displayOutputView.bottomAnchor.constraint(equalTo: keyboardInputView.topAnchor),
            displayOutputView.topAnchor.constraint(greaterThanOrEqualTo: view.safeAreaLayoutGuide.topAnchor),
        
            keyboardInputView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            keyboardInputView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            keyboardInputView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
        ])
    }
}

//
//  DisplayOutputView.swift
//  iOS-Calculator-noStoryboard
//
//  Created by Mikhail on 19.06.2022.
//

import UIKit

class DisplayOutputView: UIView {
    private let sideMargin: CGFloat = 16.0
    
    private let outputLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .calcWhite
        label.backgroundColor = .calcBlack
        label.textAlignment = .right
        label.text = "0"
        label.font = .systemFont(ofSize: 100, weight: .light)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(outputLabel)
    }
    
    private func setConstraints() {
        directionalLayoutMargins = NSDirectionalEdgeInsets(top: 0, leading: sideMargin, bottom: 0, trailing: sideMargin)
        
        NSLayoutConstraint.activate([
            outputLabel.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            outputLabel.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            outputLabel.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            outputLabel.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
        ])
    }
}

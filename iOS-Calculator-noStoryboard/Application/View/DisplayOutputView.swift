//
//  DisplayOutputView.swift
//  iOS-Calculator-noStoryboard
//
//  Created by Mikhail on 19.06.2022.
//

import UIKit

class DisplayOutputView: UIView {
    private let outputLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .calcWhite
        label.backgroundColor = .calcBlack
        label.textAlignment = .right
        label.text = "0"
//        label.font = .systemFont(ofSize: 100)
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
        //FIXME: set margins with a variable
        directionalLayoutMargins = NSDirectionalEdgeInsets(top: 0, leading: 16.0, bottom: 0, trailing: 16.0)
        
        NSLayoutConstraint.activate([
            outputLabel.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            outputLabel.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            outputLabel.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            outputLabel.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
        ])
    }
}

//
//  SecondView.swift
//  coordinators
//
//  Created by Gustavo Isidio on 24/11/21.
//

import UIKit

class SecondView: UIView, CoordinatorsViewProtocol {
    
    // MARK: - Initializers
    init(){
        super.init(frame: .zero)
        
        backgroundColor = #colorLiteral(red: 0.3098039329, green: 0.2039215714, blue: 0.03921568766, alpha: 1)
        
        addSubviews()
        setupAutoLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - SubViews
    internal func addSubviews() {
        [label,
         button].forEach {
            stackView.addArrangedSubview($0)
            //$0.translatesAutoresizingMaskIntoConstraints = false
         }
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(stackView)
    }
    
    let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .black
        return label
    }()

    let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemGreen
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Login", for: .normal)
        return button
    }()
    
    let stackView: UIStackView = {
        let stack = UIStackView()
        stack.alignment = .center
        stack.distribution = .equalSpacing
        stack.axis = .vertical
        stack.spacing   = 16.0
        return stack
    }()

    // MARK: - AutoLayout
    internal func setupAutoLayout() {
        
        let labelConstraints = [
            label.heightAnchor.constraint(equalToConstant: 50),
            label.widthAnchor.constraint(equalToConstant: 300)
        ]
        
        let buttonConstraints = [
            button.heightAnchor.constraint(equalToConstant: 50),
            button.widthAnchor.constraint(equalToConstant: 300)
        ]
        
        let stackConstraints = [
            stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            stackView.heightAnchor.constraint(equalToConstant: 150),
            stackView.widthAnchor.constraint(equalToConstant: 300)
        ]

        [stackConstraints,
         labelConstraints,
         buttonConstraints].forEach(NSLayoutConstraint.activate(_:))
    }
}

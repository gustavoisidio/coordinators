//
//  FirstView.swift
//  coordinators
//
//  Created by Gustavo Isidio on 24/11/21.
//

import UIKit

class FirstView: UIView, CoordinatorsViewProtocol {
    
    // MARK: - Initializers
    init(){
        super.init(frame: .zero)
        
        backgroundColor = #colorLiteral(red: 0.4343730482, green: 0.1641572924, blue: 0.1540402477, alpha: 1)
        
        addSubviews()
        setupAutoLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - SubViews
    internal func addSubviews() {
        [textInput,
         button].forEach {
            stackView.addArrangedSubview($0)
            //$0.translatesAutoresizingMaskIntoConstraints = false
         }
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(stackView)
    }
    
    let stackView: UIStackView = {
        let stack = UIStackView()
        stack.alignment = .center
        stack.distribution = .equalSpacing
        stack.axis = .vertical
        stack.spacing   = 16.0
        //stack.backgroundColor = .yellow
        return stack
    }()
    
    let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemGreen
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Let's run, baby!", for: .normal)
        button.layer.cornerRadius = 20
        
        return button
    }()
    
    let textInput: UITextField = {
        let textInput = UITextField()
        textInput.textColor = .black
        textInput.borderStyle = .roundedRect
        textInput.isEnabled = true
        textInput.layer.cornerRadius = 30
        return textInput
    }()
    
    // MARK: - AutoLayout
    internal func setupAutoLayout() {
        
        let textInputConstraints = [
            textInput.heightAnchor.constraint(equalToConstant: 50),
            textInput.widthAnchor.constraint(equalToConstant: 300)
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
        textInputConstraints,
        buttonConstraints].forEach(NSLayoutConstraint.activate(_:))
    }

}

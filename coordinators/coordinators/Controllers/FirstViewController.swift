//
//  ViewController.swift
//  coordinators
//
//  Created by Gustavo Isidio on 23/11/21.
//

import UIKit

class FirstViewController: UIViewController, MainCoordinating{
    
    // MARK: - Initializers
    
    var coordinator: MainCoordinator?
    
    lazy var contentView = FirstView()
    
    var valueTextField: String!
    
    init(textField: String = "EMPTY") {
        self.valueTextField = textField
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First ViewController"
        
        setupView()
        makeActions()

    }
    
    func makeActions() {
        contentView.button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    func setupView() {
        contentView.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(contentView)
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }

    
    @objc func didTapButton () {
        self.valueTextField = contentView.textInput.text
        coordinator?.flowToSecondVC(textField: valueTextField!)
    }
}
    

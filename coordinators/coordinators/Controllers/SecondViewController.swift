//
//  SecondViewController.swift
//  coordinators
//
//  Created by Gustavo Isidio on 23/11/21.
//

import UIKit

class SecondViewController: UIViewController, AuthCoordinating{

    // MARK: - Initializers
    var coordinator: AuthCoordinator?
    
    lazy var contentView = SecondView()

    var data: String
    
    init(data: String = "EMPTY") {
        self.data = data
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "Second"
        
        contentView.label.text = self.data
        
        setupView()
        makeActions()
        
    }
    
    // MARK: - Views
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
    
    
    // MARK: - Actions
    func makeActions() {
        contentView.button.addTarget(self, action: #selector(didTapLogin), for: .touchUpInside)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Register",
                                                            style: .done,
                                                            target: self,
                                                            action: #selector(didTapRegister))
    }
    
    
    // MARK: - Coordinator calls
    @objc func didTapLogin () {
        coordinator?.login(textField: data)
    }
    
    @objc func didTapRegister () {
        coordinator?.register(textField: data)
    }
    

}

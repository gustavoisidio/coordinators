//
//  SecondViewController.swift
//  coordinators
//
//  Created by Gustavo Isidio on 23/11/21.
//

import UIKit

class SecondViewController: UIViewController, MainCoordinating{
    var coordinator: MainCoordinator?
    
    var data: String

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "Second"
        view.backgroundColor = .yellow
        
        makeUI()
        
    }
    
    init(data: String = "EMPTY") {
        self.data = data
        super.init(nibName: nil, bundle: nil)
    }
    
    func makeUI() {

        let label = UILabel(frame: CGRect(x: 90, y: 280, width: 220, height: 55))
        label.text = self.data
        label.textAlignment = .center
        label.textColor = .black
        view.addSubview(label)
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 55))
        button.center = view.center
        button.backgroundColor = .systemGreen
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(didTapLogin), for: .touchUpInside)
        button.setTitle("Login", for: .normal)
        
        view.addSubview(button)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Register",
                                                            style: .done,
                                                            target: self,
                                                            action: #selector(didTapRegister))

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func didTapLogin () {
        coordinator?.login(textField: data)
    }
    
    @objc func didTapRegister () {
        coordinator?.register(textField: data)
    }
    

}

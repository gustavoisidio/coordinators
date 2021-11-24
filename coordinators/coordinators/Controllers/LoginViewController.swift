//
//  LoginViewController.swift
//  coordinators
//
//  Created by Gustavo Isidio on 24/11/21.
//

import UIKit

class LoginViewController: UIViewController, MainCoordinating {
    var coordinator: MainCoordinator?
    
    var data: String?
    
    init(data: String = "EMPTY") {
        self.data = data
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .purple
        title = "Login"
        
        makeUI()
    }
    
    func makeUI() {

        let label = UILabel(frame: CGRect(x: 90, y: 280, width: 220, height: 55))
        label.text = self.data
        label.textAlignment = .center
        label.textColor = .black
        view.addSubview(label)

    }

}

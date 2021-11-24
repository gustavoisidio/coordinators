//
//  ViewController.swift
//  coordinators
//
//  Created by Gustavo Isidio on 23/11/21.
//

import UIKit

class ViewController: UIViewController, MainCoordinating{
    
    var coordinator: MainCoordinator?
    
    var valueTextField: String!
    
    var textInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        title = "Home"
        
        makeUI()

    }
    
    init(textField: String = "EMPTY") {
        self.valueTextField = textField
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func makeUI() {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 55))
        button.center = view.center
        button.backgroundColor = .systemGreen
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.setTitle("Tap Me!", for: .normal)
        
        view.addSubview(button)

//        let label = UILabel(frame: CGRect(x: 90, y: 280, width: 220, height: 55))
//        label.text = "Testando boy"
//        label.textAlignment = .center
//        label.textColor = .black
//
//        view.addSubview(label)
        
        textInput = {
            let textInput = UITextField(frame: CGRect(x: 90, y: 330, width: 220, height: 55))
            textInput.textColor = .black
            textInput.borderStyle = .roundedRect
            return textInput
        }()
        
        view.addSubview(textInput)
    }
 
    @objc func didTapButton () {
        self.valueTextField = textInput?.text
        coordinator?.flowToSecondVC(textField: valueTextField!)
    }
}
    

//
//  MainCoordinator.swift
//  coordinators
//
//  Created by Gustavo Isidio on 23/11/21.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {

    var childCoordinators: [Coordinator]?
    
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        var vc: UIViewController & MainCoordinating  = ViewController()
        vc.coordinator = self
        navigationController?.setViewControllers([vc],
                                                 animated: true)
    }
    
    func flowToSecondVC(textField: String) {
        var vc: UIViewController & MainCoordinating = SecondViewController(data: textField)
        vc.coordinator = self
        navigationController?.setViewControllers([vc],
                                                 animated: true)
    }
    
    func login(textField: String) {
        var vc: UIViewController & MainCoordinating = LoginViewController(data: textField)
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func register(textField: String) {
        var vc: UIViewController & MainCoordinating = RegisterViewController(data: textField)
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}

protocol MainCoordinating {
    var coordinator: MainCoordinator? { get set }
}

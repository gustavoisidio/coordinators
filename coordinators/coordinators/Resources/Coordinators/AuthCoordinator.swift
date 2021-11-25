//
//  LoginCoordinator.swift
//  coordinators
//
//  Created by Gustavo Isidio on 24/11/21.
//

import Foundation
import UIKit

class AuthCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    
    var childCoordinators: [Coordinator]?
    
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {

    }
    
    func start(textField: String) {
        var vc: UIViewController & AuthCoordinating = SecondViewController(data: textField)
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func login(textField: String) {
        var vc: UIViewController & AuthCoordinating = LoginViewController(data: textField)
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func register(textField: String) {
        var vc: UIViewController & AuthCoordinating = RegisterViewController(data: textField)
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
}

protocol AuthCoordinating {
    var coordinator: AuthCoordinator? { get set }
}

//
//  MainCoordinator.swift
//  coordinators
//
//  Created by Gustavo Isidio on 23/11/21.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    
    var childCoordinators: [Coordinator]?
    
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.parentCoordinator = self
    }
    
    func start() {
        var vc: UIViewController & MainCoordinating  = FirstViewController()
        vc.coordinator = self
        navigationController?.setViewControllers([vc],
                                                 animated: true)
    }
    
    func flowToSecondVC(textField: String) {
        var vc: UIViewController & MainCoordinating = SecondViewController(data: textField)
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
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
    
    func flowToAuth () {
        let newNavController = UINavigationController()
        let child = AuthCoordinator(navigationController: newNavController)
        childCoordinators?.append(child)
        child.start()
    }
    
    
}

protocol MainCoordinating {
    var coordinator: MainCoordinator? { get set }
}
//protocol MainCoordinatorProtocol {
//    var coordinator: MainCoordinator? { get set }
//    var parentCoordinator: MainCoordinator? { get set }
//    var childCoordinators: [MainCoordinator]? { get set }
//    var navigationController: UINavigationController? { get set }
//    
//    func start ()
//}

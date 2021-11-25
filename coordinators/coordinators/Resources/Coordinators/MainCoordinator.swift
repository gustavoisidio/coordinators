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
     
    func flowToAuth (textField: String) {
        let child = AuthCoordinator(navigationController: navigationController!)
        childCoordinators?.append(child)
        child.parentCoordinator = self
        child.start(textField: textField)
    }
    
}

protocol MainCoordinating {
    var coordinator: MainCoordinator? { get set }
}

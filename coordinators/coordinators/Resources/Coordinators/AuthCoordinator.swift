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
        self.parentCoordinator = MainCoordinator(navigationController: navigationController)
    }
    
    
    func start() {
        // nothing
    }
    
}

protocol AuthCoordinating {
    var coordinator: AuthCoordinator? { get set }
}

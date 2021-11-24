//
//  LoginCoordinator.swift
//  coordinators
//
//  Created by Gustavo Isidio on 24/11/21.
//

import Foundation
import UIKit

class AuthCoordinator: Coordinator {
    weak var parentCoordinator: MainCoordinator?
    
    var data: Any?
    
    var childCoordinators: [Coordinator]?
    
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController, data: Any?) {
        self.navigationController = navigationController
        self.data = data
    }
    
//    func eventOccurred(with type: Event, data: Any?) {
//        switch type {
//        case .buttonTapped: break
//            // nothing
//        case .loginTapped:
//            login()
//        case .registerTapped:
//            register()
//        }
//        
//    }
    
    func start() {
        // nothing
    }
    
//    func login () {
//        var vc: UIViewController & MainCoordinated = LoginViewController(data: data)
//        vc.coordinator = self
//        navigationController?.pushViewController(vc, animated: true)
//    }
//
//    func register () {
//        var vc: UIViewController & MainCoordinated = RegisterViewController(data: data)
//        vc.coordinator = self
//        navigationController?.pushViewController(vc, animated: true)
//    }
    
    
}

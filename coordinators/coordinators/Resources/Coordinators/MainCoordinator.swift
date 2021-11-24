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
    
    var data: Any?
    
    init(navigationController: UINavigationController, data: Any?) {
        self.navigationController = navigationController
        self.data = data
    }
    
    func eventOccurred(with type: Event, data: Any?) {
        switch type {
        case .buttonTapped:
            var vc: UIViewController & Coordinating  = SecondViewController(data: data as! String)
            vc.coordinator = self
            navigationController?.pushViewController(vc, animated: true)
        case .loginTapped:
            login(data: data)
        case .registerTapped:
            register(data: data)
        }
    }
    
    func start() {
        var vc: UIViewController & Coordinating = ViewController()
        vc.coordinator = self
        navigationController?.setViewControllers([vc],
                                                 animated: true)
    }
    
    func login(data: Any?) {
        let child = AuthCoordinator(navigationController: navigationController!, data: data)
        child.parentCoordinator = self
        childCoordinators?.append(child)
        child.login()
    }
    
    func register(data: Any?) {
        let child = AuthCoordinator(navigationController: navigationController!, data: data)
        child.parentCoordinator = self
        childCoordinators?.append(child)
        child.register()
    }
    
    
}




//class ACoordinator {
//...
//func submit(_ phone: String) {
//    let coordinator = BCoordinator(phone: phone)
//    ...
//}
//...
//}
//
//class BCoordinator {
//...
//let phone: String
//init(phone: String) {
//    self.phone = phone
//    ...
//}
//...
//}
//
//class AViewController: UIViewController {
//    ...
//    weak var coordinator: ACoordinator?
//    ...
//    @objc func didPressSubmit(_ sender: UIButton) {
//         coordinator?.submit(txtField.text ?? "")
//    }
//    ...
//    }


//
//  Coordinator.swift
//  coordinators
//
//  Created by Gustavo Isidio on 23/11/21.
//

import Foundation
import UIKit

protocol Coordinator {
    var parentCoordinator: Coordinator? { get set }
    var childCoordinators: [Coordinator]? { get set }
    var navigationController: UINavigationController? { get set }
    
    func start ()
}
//
//class CoordinatorClass: Coordinator {
//    var parentCoordinator: Coordinator?
//    
//    var childCoordinators: [Coordinator]?
//    
//    var navigationController: UINavigationController?
//    
//    func start() {
//        
//    }
//    
//}
//
//class SecondCoordinatorClass: CoordinatorClass {
//    var parentCoordinator: CoordinatorClass?
//}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}

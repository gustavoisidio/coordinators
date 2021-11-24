//
//  Coordinator.swift
//  coordinators
//
//  Created by Gustavo Isidio on 23/11/21.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator]? { get set }
    var navigationController: UINavigationController? { get set }
    
    func start ()
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}

//
//  Coordinator.swift
//  coordinators
//
//  Created by Gustavo Isidio on 23/11/21.
//

import Foundation
import UIKit

enum Event {
    case buttonTapped
    case loginTapped
    case registerTapped
}

protocol Coordinator {
    var childCoordinators: [Coordinator]? { get set }
    var navigationController: UINavigationController? { get set }
    var data: Any? { get set }
    
    func eventOccurred(with type: Event, data: Any?)
    func start ()
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}

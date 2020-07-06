//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Varun Rathi on 06/07/20.
//  Copyright © 2020 Varun Rathi. All rights reserved.
//

import UIKit

protocol  Coordinator {
    var childCoordinators: [Coordinator] {  get set }
    var navigationController:UINavigationController { get set}
    
    func start()
}

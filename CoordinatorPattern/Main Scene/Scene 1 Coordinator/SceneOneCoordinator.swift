//
//  Scene1Coordinator.swift
//  CoordinatorPattern
//
//  Created by Varun Rathi on 07/07/20.
//  Copyright © 2020 Varun Rathi. All rights reserved.
//

import UIKit

class FlowCoordinator1: Coordinator {
    weak var parentCoordinator: MainCoordinator?
    var childCoordinators =  [Coordinator]()
    var navigationController: UINavigationController
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController1.instantiate()
        vc.coordinator = self
        self.navigationController.pushViewController(vc, animated: false)
    }
    
//    func scene1Finished(){
//        parentCoordinator?.childDidFinish(self)
//    }
}

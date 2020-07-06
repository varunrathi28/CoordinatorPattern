//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Varun Rathi on 06/07/20.
//  Copyright © 2020 Varun Rathi. All rights reserved.
//

import UIKit

class MainCoordinator : Coordinator {
    var childCoordinators =  [Coordinator]()
    var navigationController: UINavigationController
    
    init(_ navigationController:UINavigationController){
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        self.navigationController.pushViewController(vc, animated: true)
    }
    
    func scene1(){
        let vc = ViewController1.instantiate()
        vc.coordinator = self
        self.navigationController.pushViewController(vc, animated: false)
    }
    
    func scene2(){
        let vc = ViewController2.instantiate()
        vc.coordinator = self
        self.navigationController.pushViewController(vc, animated: true)
    }
}

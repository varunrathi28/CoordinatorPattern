//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Varun Rathi on 06/07/20.
//  Copyright © 2020 Varun Rathi. All rights reserved.
//

import UIKit

public class MainCoordinator :NSObject,Coordinator {
    var childCoordinators =  [Coordinator]()
    var navigationController: UINavigationController
    
    init(_ navigationController:UINavigationController){
        self.navigationController = navigationController
    }
    
    func start() {
        navigationController.delegate = self
        let vc = ViewController.instantiate()
        vc.coordinator = self
        self.navigationController.pushViewController(vc, animated: true)
    }


    func scene1(){
        let childCoordinator = FlowCoordinator1(self.navigationController)
        childCoordinator.parentCoordinator = self
        childCoordinators.append(childCoordinator)
        childCoordinator.start()
    }

    func scene2(){
        let flow2 = FlowCoordinator2(self.navigationController)
        flow2.parentCoordinator = self
        childCoordinators.append(flow2)
        flow2.start()
    }
    
    func childDidFinish(_ child: Coordinator?){
        for (index,coordinator) in childCoordinators.enumerated() {
            if coordinator === child {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
}

extension MainCoordinator : UINavigationControllerDelegate {
    
    public func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
    
        guard let fromVC = navigationController.transitionCoordinator?.viewController(forKey: .from) else {
        return
}
        
        if navigationController.viewControllers.contains(fromVC) {
            return
        }
        
        if let child = fromVC as? ViewController1 {
            childDidFinish(child.coordinator)
        }
        
}
    
}

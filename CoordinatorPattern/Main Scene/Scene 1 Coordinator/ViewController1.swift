//
//  ViewController1.swift
//  CoordinatorPattern
//
//  Created by Varun Rathi on 06/07/20.
//  Copyright © 2020 Varun Rathi. All rights reserved.
//
import UIKit
class ViewController1 : UIViewController, StoryboardInstantiable {
    
    weak var coordinator: FlowCoordinator1?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        coordinator?.scene1Finished()
//    }
    
}




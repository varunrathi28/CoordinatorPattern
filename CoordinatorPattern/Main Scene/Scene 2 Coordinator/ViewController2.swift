//
//  ViewController2.swift
//  CoordinatorPattern
//
//  Created by Varun Rathi on 06/07/20.
//  Copyright © 2020 Varun Rathi. All rights reserved.
//

import UIKit
class ViewController2 : UIViewController, StoryboardInstantiable {
    weak var coordinator: FlowCoordinator2?
    override func viewDidLoad() {
    super.viewDidLoad()
}

    override func viewDidDisappear(_ animated:Bool){
        super.viewDidDisappear(animated)
        coordinator?.flowFinished()
    }
    
    
    
}

//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Varun Rathi on 06/07/20.
//  Copyright © 2020 Varun Rathi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, StoryboardInstantiable{
    
    weak var coordinator: MainCoordinator?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func screen1Clicked(){
        coordinator?.scene1()
    }
    
    @IBAction func screen2Clicked(){
        coordinator?.scene2()
    }
}


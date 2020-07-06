//
//  StoryBoard.swift
//  CoordinatorPattern
//
//  Created by Varun Rathi on 06/07/20.
//  Copyright © 2020 Varun Rathi. All rights reserved.
//

import UIKit

protocol StoryboardInstantiable {
    static func instantiate() -> Self
}

extension StoryboardInstantiable where Self: UIViewController {
     static func instantiate() -> Self {
        let id = String(describing: self)
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        return storyBoard.instantiateViewController(identifier: id) as! Self
    }
} 

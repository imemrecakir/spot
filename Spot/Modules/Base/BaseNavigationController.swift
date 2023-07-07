//
//  BaseNavigationController.swift
//  Spot
//
//  Created by Emre Çakır on 6.07.2023.
//

import UIKit

class BaseNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        super.pushViewController(viewController, animated: animated)
        viewController.navigationItem.backButtonTitle = ""
    }
}


//
//  LoginRouter.swift
//  Spot
//
//  Created by Emre Çakır on 5.04.2024.
//

import Foundation

final class LoginRouter: BaseRouter {
    
    override init() {
        super.init()
        let viewModel = LoginViewModel(router: self)
        let viewController = LoginViewController(viewModel: viewModel)
        viewModel.delegate = viewController
        initialViewController = viewController
    }
}

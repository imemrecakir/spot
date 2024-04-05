//
//  AddRouter.swift
//  Spot
//
//  Created by Emre Çakır on 5.04.2024.
//

import Foundation

final class AddRouter: BaseRouter {
    
    override init() {
        super.init()
        let viewModel = AddViewModel(router: self)
        let viewController = AddViewController(viewModel: viewModel)
        viewModel.delegate = viewController
        initialViewController = viewController
    }
}

//
//  SettingsRouter.swift
//  Spot
//
//  Created by Emre Çakır on 5.04.2024.
//

import Foundation

final class SettingsRouter: BaseRouter {
    
    override init() {
        super.init()
        let viewModel = SettingsViewModel(router: self)
        let viewController = SettingsViewController(viewModel: viewModel)
        viewModel.delegate = viewController
        initialViewController = viewController
    }
}

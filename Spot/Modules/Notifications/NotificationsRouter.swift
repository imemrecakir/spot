//
//  NotificationsRouter.swift
//  Spot
//
//  Created by Emre Çakır on 5.04.2024.
//

import Foundation

final class NotificationsRouter: BaseRouter {
    
    override init() {
        super.init()
        let viewModel = NotificationsViewModel(router: self)
        let viewController = NotificationsViewController(viewModel: viewModel)
        viewModel.delegate = viewController
        initialViewController = viewController
    }
}

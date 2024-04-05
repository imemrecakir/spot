//
//  FeedRouter.swift
//  Spot
//
//  Created by Emre Çakır on 5.04.2024.
//

import Foundation

final class FeedRouter: BaseRouter {
    
    override init() {
        super.init()
        let viewModel = FeedViewModel(router: self)
        let viewController = FeedViewController(viewModel: viewModel)
        viewModel.delegate = viewController
        initialViewController = viewController
    }
}

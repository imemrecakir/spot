//
//  SearchRouter.swift
//  Spot
//
//  Created by Emre Çakır on 5.04.2024.
//

import Foundation

final class SearchRouter: BaseRouter {
    
    override init() {
        super.init()
        let viewModel = SearchViewModel(router: self)
        let viewController = SearchViewController(viewModel: viewModel)
        viewModel.delegate = viewController
        initialViewController = viewController
    }
}

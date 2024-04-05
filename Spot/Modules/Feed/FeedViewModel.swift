//
//  FeedViewModel.swift
//  Spot
//
//  Created by Emre Çakır on 7.07.2023.
//

import Foundation

protocol FeedViewModelDelegate: AnyObject {
    func isLoading(_ isLoading: Bool)
}

final class FeedViewModel: BaseViewModel {
    
    weak var delegate: FeedViewModelDelegate?
    
    let router: FeedRouter
    
    init(router: FeedRouter) {
        self.router = router
        super.init()
    }
}

//
//  SearchViewModel.swift
//  Spot
//
//  Created by Emre Çakır on 6.07.2023.
//

import Foundation

protocol SearchViewModelDelegate: AnyObject {
    func isLoading(_ isLoading: Bool)
}

final class SearchViewModel: BaseViewModel {
    
    weak var delegate: SearchViewModelDelegate?
    
    let router: SearchRouter
    
    init(router: SearchRouter) {
        self.router = router
        super.init()
    }
}

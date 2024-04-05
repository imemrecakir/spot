//
//  AddViewModel.swift
//  Spot
//
//  Created by Emre Çakır on 6.07.2023.
//

import Foundation

protocol AddViewModelDelegate: AnyObject {
    func isLoading(_ isLoading: Bool)
}

final class AddViewModel: BaseViewModel {
    
    weak var delegate: AddViewModelDelegate?
    
    let router: AddRouter
    
    init(router: AddRouter) {
        self.router = router
        super.init()
    }
}

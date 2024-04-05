//
//  LoginViewModel.swift
//  Spot
//
//  Created by Emre Çakır on 17.07.2023.
//

import Foundation

protocol LoginViewModelDelegate: AnyObject {
    func isLoading(_ isLoading: Bool)
}

final class LoginViewModel: BaseViewModel {
    
    weak var delegate: LoginViewModelDelegate?
    
    let router: LoginRouter
    
    init(router: LoginRouter) {
        self.router = router
        super.init()
    }
}

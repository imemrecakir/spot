//
//  SettingsViewModel.swift
//  Spot
//
//  Created by Emre Çakır on 6.07.2023.
//

import Foundation

protocol SettingsViewModelDelegate: AnyObject {
    func isLoading(_ isLoading: Bool)
}

final class SettingsViewModel: BaseViewModel {
    
    weak var delegate: SettingsViewModelDelegate?
    
    let router: SettingsRouter
    
    init(router: SettingsRouter) {
        self.router = router
        super.init()
    }
}

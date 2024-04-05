//
//  NotificationsViewModel.swift
//  Spot
//
//  Created by Emre Çakır on 7.07.2023.
//

import Foundation

protocol NotificationsViewModelDelegate: AnyObject {
    func isLoading(_ isLoading: Bool)
}

final class NotificationsViewModel: BaseViewModel {
    
    weak var delegate: NotificationsViewModelDelegate?
    
    let router: NotificationsRouter
    
    init(router: NotificationsRouter) {
        self.router = router
        super.init()
    }
}

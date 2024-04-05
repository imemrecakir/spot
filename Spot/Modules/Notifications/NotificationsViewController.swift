//
//  NotificationsViewController.swift
//  Spot
//
//  Created by Emre Çakır on 7.07.2023.
//

import UIKit

final class NotificationsViewController: BaseViewController {

    let viewModel: NotificationsViewModel
    
    init(viewModel: NotificationsViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setupUI() {}
    
    func setupConstraints() {}
}

extension NotificationsViewController: NotificationsViewModelDelegate {
    func isLoading(_ isLoading: Bool) {
        
    }
}


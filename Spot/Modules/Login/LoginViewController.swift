//
//  LoginViewController.swift
//  Spot
//
//  Created by Emre Çakır on 17.07.2023.
//

import UIKit

final class LoginViewController: BaseViewController {
    
    let viewModel: LoginViewModel
    
    init(viewModel: LoginViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        
    }
    
    func setupConstraints() {
        
    }
}

extension LoginViewController: LoginViewModelDelegate {
    func isLoading(_ isLoading: Bool) {
        
    }
}

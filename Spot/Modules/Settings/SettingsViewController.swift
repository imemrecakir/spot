//
//  SettingsViewController.swift
//  Spot
//
//  Created by Emre Çakır on 6.07.2023.
//

import UIKit

final class SettingsViewController: BaseViewController {
    
    let viewModel: SettingsViewModel
    
    init(viewModel: SettingsViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setupUI() {
        
    }
    
    func setupConstraints() {
        
    }
}

extension SettingsViewController: SettingsViewModelDelegate {
    func isLoading(_ isLoading: Bool) {
        
    }
}

//
//  AddViewController.swift
//  Spot
//
//  Created by Emre Çakır on 6.07.2023.
//

import UIKit

final class AddViewController: BaseViewController {

    let viewModel: AddViewModel
    
    init(viewModel: AddViewModel) {
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

extension AddViewController: AddViewModelDelegate {
    func isLoading(_ isLoading: Bool) {
        
    }
}

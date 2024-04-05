//
//  SearchViewController.swift
//  Spot
//
//  Created by Emre Çakır on 6.07.2023.
//

import Foundation

final class SearchViewController: BaseViewController {

    let viewModel: SearchViewModel
    
    init(viewModel: SearchViewModel) {
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

extension SearchViewController: SearchViewModelDelegate {
    func isLoading(_ isLoading: Bool) {
        
    }
}

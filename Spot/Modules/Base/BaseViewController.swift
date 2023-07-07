//
//  BaseViewController.swift
//  Spot
//
//  Created by Emre Çakır on 6.07.2023.
//

import UIKit

protocol BaseViewControllerProtocol {
    func setupUI()
    func setupConstraints()
}

typealias BaseViewController<VM> = BaseViewControllerProtocol & BaseViewControllerClass<VM> where VM: BaseViewModel

class BaseViewControllerClass<VM>: UIViewController where VM: BaseViewModel {
    var viewModel: VM!
    
    var isNavigationBarHidden: Bool? = false
    var isLightStatusBar = false
    
    var isNavigationBarSeperatorHidden: Bool? = false {
        didSet {
            if let isNavigationBarSeperatorHidden, !isNavigationBarSeperatorHidden {
                // TODO: change navbar seperator dynamically
                print("isNavigationBarSeperatorHidden changed")
            }
        }
    }

    deinit {
        print("Deinit called: \(String(describing: self))")
    }
    
    private let loadingView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        view.alpha = 0.15
        view.isHidden = true
        return view
    }()

    private let activityIndicatiorView: UIActivityIndicatorView = {
        let activityIndicatiorView = UIActivityIndicatorView()
        activityIndicatiorView.translatesAutoresizingMaskIntoConstraints = false
        activityIndicatiorView.clipsToBounds = true
        activityIndicatiorView.style = .large
        return activityIndicatiorView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        hideKeyboardWhenTappedAround()
        
        guard let controller = self as? BaseViewController<VM> else {
            return
        }

        setupBaseUI()
        controller.setupUI()
        setupBaseConstraint()
        controller.setupConstraints()
    }

    private func setupBaseUI() {
        view.addSubview(loadingView)
        view.addSubview(activityIndicatiorView)
    }

    private func setupBaseConstraint() {
        NSLayoutConstraint.activate([
            loadingView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            loadingView.topAnchor.constraint(equalTo: view.topAnchor),
            loadingView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            loadingView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            activityIndicatiorView.heightAnchor.constraint(equalToConstant: 48),
            activityIndicatiorView.widthAnchor.constraint(equalToConstant: 48),
            activityIndicatiorView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            activityIndicatiorView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setNeedsStatusBarAppearanceUpdate()
        if let isNavigationBarHidden {
            self.navigationController?.isNavigationBarHidden = isNavigationBarHidden
        }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        isLightStatusBar ? .lightContent : .darkContent
    }

    func showLoading(_ isActive: Bool) {
        loadingView.isHidden = !isActive
        if isActive {
            activityIndicatiorView.startAnimating()
            view.bringSubviewToFront(loadingView)
            view.bringSubviewToFront(activityIndicatiorView)
        } else {
            view.sendSubviewToBack(activityIndicatiorView)
            view.sendSubviewToBack(loadingView)
            activityIndicatiorView.stopAnimating()
        }
    }
    
}


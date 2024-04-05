//
//  MainViewController.swift
//  Spot
//
//  Created by Emre Çakır on 6.07.2023.
//

import UIKit

final class MainViewController: UITabBarController {

    private lazy var seperator: CALayer = {
        let seperator = CALayer()
        seperator.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 1)
        seperator.backgroundColor = UIColor.quaternaryLabel.cgColor
        return seperator
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.tintColor = .tintColor
        tabBar.unselectedItemTintColor = .darkGray
        tabBar.backgroundColor = .secondarySystemBackground
        tabBar.layer.addSublayer(seperator)
        viewControllers = [
            setupViewController(with: FeedRouter().initialViewController,
                                title: "Feed",
                                imageName: "house"),
            setupViewController(with: SearchRouter().initialViewController,
                                title: "Search",
                                imageName: "magnifyingglass"),
            setupViewController(with: AddRouter().initialViewController,
                                title: "Add",
                                imageName: "plus"),
            setupViewController(with: NotificationsRouter().initialViewController,
                                title: "Notifications",
                                imageName: "bell"),
            setupViewController(with: SettingsRouter().initialViewController,
                                title: "Settings",
                                imageName: "gearshape")
        ]
    }
    
    private func setupViewController(with rootViewController: UIViewController, title: String, imageName: String) -> UINavigationController {
        rootViewController.tabBarItem.title = title
        rootViewController.tabBarItem.image = UIImage(systemName: imageName)
        rootViewController.title = title
        return UINavigationController(rootViewController: rootViewController)
    }
}


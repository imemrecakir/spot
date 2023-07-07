//
//  MainViewController.swift
//  Spot
//
//  Created by Emre Çakır on 6.07.2023.
//

import UIKit

class MainViewController: UITabBarController {
    
    let seperator: CALayer = {
        let seperator = CALayer()
        seperator.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 1)
        seperator.backgroundColor = Colors.whiteSmoke.cgColor
        return seperator
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.tintColor = Colors.green
        tabBar.unselectedItemTintColor = Colors.placeholder
        tabBar.layer.addSublayer(seperator)
        viewControllers = [
            setupViewController(rootViewController: FeedViewController(),
                                title: "Feed",
                                image: "house"),
            setupViewController(rootViewController: SearchViewController(),
                                title: "Search",
                                image: "magnifyingglass"),
            setupViewController(rootViewController: AddViewController(),
                                title: "Add",
                                image: "plus"),
            setupViewController(rootViewController: NotificationsViewController(),
                                title: "Notifications",
                                image: "bell"),
            setupViewController(rootViewController: SettingsViewController(),
                                title: "Settings",
                                image: "gear")
        ]
        
        setNeedsStatusBarAppearanceUpdate()
        NavigationManager.navController.isNavigationBarHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    private func setupViewController(rootViewController: UIViewController, title: String, image: String) -> BaseNavigationController {
        rootViewController.tabBarItem.title = title
        rootViewController.tabBarItem.image = UIImage(systemName: image)
        rootViewController.title = title
        return BaseNavigationController(rootViewController: rootViewController)
    }
}

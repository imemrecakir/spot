//
//  NavigationManager.swift
//  Spot
//
//  Created by Emre Çakır on 6.07.2023.
//

import UIKit

final class NavigationManager {
    static var navController = BaseNavigationController()
    static let shared = NavigationManager()
    
    private init() {}
    
    func setRootNavigationController(router: BaseRouter) {
        if let window = UIApplication.shared.currentWindow() {
            if let viewController = router.initialViewController {
                let navigationController = BaseNavigationController(rootViewController: viewController)
                NavigationManager.navController = navigationController
                window.rootViewController = navigationController
                window.makeKeyAndVisible()
            }
        }
    }
    
    func openUrl(url: URL) {
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    
    func openSettings() {
        guard let settingsUrl = URL(string: UIApplication.openSettingsURLString) else { return }
        openUrl(url: settingsUrl)
    }
}

//
//  UIApplication+Ext.swift
//  Spot
//
//  Created by Emre Çakır on 7.07.2023.
//

import UIKit

extension UIApplication {
    func currentWindow() -> UIWindow? {
        let connectedScenes = UIApplication.shared.connectedScenes
            .filter { $0.activationState == .foregroundActive }
            .compactMap { $0 as? UIWindowScene }
        
        let window = connectedScenes.first?
            .windows
            .first { $0.isKeyWindow }
        
        return window
    }
}

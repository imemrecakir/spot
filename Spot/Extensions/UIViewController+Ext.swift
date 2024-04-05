//
//  UIViewController+Ext.swift
//  Spot
//
//  Created by Emre Çakır on 6.07.2023.
//

import UIKit

extension UIViewController {
    
    enum ToastType {
        case success, error, alert
    }
    
    func showToast(message: String, duration: TimeInterval, type: ToastType) {
        let toastLabel = UILabel(frame: CGRect(x: 24, y: view.frame.height - 100, width: view.frame.size.width - 48, height: 48))
        toastLabel.backgroundColor = .black.withAlphaComponent(0.6)
        toastLabel.font = UIFont.systemFont(ofSize: 18)
        toastLabel.textAlignment = .center
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10
        toastLabel.clipsToBounds = true
        
        switch type {
        case .success:
            toastLabel.textColor = .white
            toastLabel.backgroundColor = .systemGreen
        case .error:
            toastLabel.textColor = .white
            toastLabel.backgroundColor = .systemRed
        case .alert:
            toastLabel.textColor = .white
            toastLabel.backgroundColor = .systemGray
        }

        self.view.addSubview(toastLabel)
        
        UIView.animate(withDuration: duration) {
            toastLabel.alpha = 0.0
        } completion: { _ in
            toastLabel.removeFromSuperview()
        }
    }
    
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default) { [weak self] _ in
            guard let self else { return }
            self.dismiss(animated: true)
        }
        alert.addAction(okButton)
        DispatchQueue.main.async { [weak self] in
            guard let self else { return }
            self.present(alert, animated: true)
        }
    }

    func addKeyboardObservers(showSelector: Selector, hideSelector: Selector) {
        NotificationCenter.default.addObserver(self,
                                               selector: showSelector,
                                               name: UIResponder.keyboardWillShowNotification,
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: hideSelector,
                                               name: UIResponder.keyboardWillHideNotification,
                                               object: nil)
    }

    func removeKeyboardObservers() {
        dismissKeyboard()
        NotificationCenter.default.removeObserver(self,
                                                  name: UIResponder.keyboardWillShowNotification,
                                                  object: nil)
        NotificationCenter.default.removeObserver(self,
                                                  name: UIResponder.keyboardWillHideNotification,
                                                  object: nil)
    }

    func isTextFieldUnderKeyboard(_ sender: Notification) -> Bool {
        guard let userInfo = sender.userInfo,
              let keyboardFrame = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue,
              let currentTextField = UIResponder.currentFirst() as? UITextField else { return false }

        // check if the top of the keyboard is above the bottom of the currently focused textbox
        let keyboardTopY = keyboardFrame.cgRectValue.origin.y
        let convertedTextFieldFrame = view.convert(currentTextField.frame, from: currentTextField.superview)
        let gestorTextFieldHeight: CGFloat = 80
        let textFieldBottomY = convertedTextFieldFrame.origin.y + gestorTextFieldHeight

        return textFieldBottomY > keyboardTopY
    }

    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}


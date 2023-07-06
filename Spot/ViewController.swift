//
//  ViewController.swift
//  Spot
//
//  Created by Emre Çakır on 6.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private let label: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "SPOT"
        label.font = Fonts.regular.of(.size28)
        label.textColor = .white
        return label
    }()
    
    private let labelDefault: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "SPOT"
        label.font = .systemFont(ofSize: 28)
        label.textColor = .white
        return label
    }()
    
    private let stackView: UIStackView = {
       let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.distribution = .equalSpacing
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(stackView)
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(labelDefault)
        
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)

        ])
    }
}


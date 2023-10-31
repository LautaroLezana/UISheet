//
//  ViewController.swift
//  UIKit11-UISheet
//
//  Created by Lautaro matias Lezana luna on 22/11/2022.
//

import UIKit

class ViewController: UIViewController {
    private lazy var swiftBetaButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Deploy ViewController!"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.presentSheetViewController()
        }))
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
        view.addSubview(swiftBetaButton)
        
        NSLayoutConstraint.activate([
            swiftBetaButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftBetaButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
    func presentSheetViewController() {
        let viewControllerToPresent = SheetViewController()
        present(viewControllerToPresent,
                animated: true)
    }


}


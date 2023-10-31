//
//  SheetViewController.swift
//  UIKit11-UISheet
//
//  Created by Lautaro matias Lezana luna on 22/11/2022.
//

import UIKit

class SheetViewController: UIViewController {
    private let swiftBetaLabel: UILabel = {
        let label = UILabel()
        label.text = "Hi, My name is Lautaro!"
        label.font = .systemFont(ofSize: 32)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .purple
        view.addSubview(swiftBetaLabel)
        
        NSLayoutConstraint.activate([
            swiftBetaLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftBetaLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        
        guard let presentationController = presentationController as? UISheetPresentationController else {
            return
        }
        presentationController.detents = [.medium(), .large()]
        presentationController.selectedDetentIdentifier = .medium
        presentationController.prefersGrabberVisible = true
        presentationController.preferredCornerRadius = 20
        }
    }




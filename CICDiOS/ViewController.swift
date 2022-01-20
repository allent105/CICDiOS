//
//  ViewController.swift
//  CICDiOS
//
//  Created by Allen Theobald on 1/20/22.
//

import UIKit
import  AppCenterCrashes

class ViewController: UIViewController {

    let locationButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        style()
        layout()
    }

    @objc func locationPressed(_ sender: UIButton) {
        Crashes.generateTestCrash()
    }
}

extension ViewController {
    
    func setup() {
    }

    func style() {
        locationButton.translatesAutoresizingMaskIntoConstraints = false
        locationButton.setBackgroundImage(UIImage(systemName: "location.circle.fill"), for: .normal)
        locationButton.addTarget(self, action: #selector(locationPressed(_:)), for: .primaryActionTriggered)
        locationButton.tintColor = .label
    }

    func layout() {
        view.addSubview(locationButton)
        
        NSLayoutConstraint.activate([
            locationButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            locationButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

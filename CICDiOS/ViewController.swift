//
//  ViewController.swift
//  CICDiOS
//
//  Created by Allen Theobald on 1/20/22.
//

import UIKit
import AppCenterAnalytics
import AppCenterCrashes

class ViewController: UIViewController {

    let locationButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        style()
        layout()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if Crashes.hasCrashedInLastSession {
            print("App has crashed in last session")
        }
        Analytics.trackEvent("navigated_to_main_screen")
    }

    @objc func locationPressed(_ sender: UIButton) {
        print("locationPressed")
        //Crashes.generateTestCrash()
        let properties = ["current_age": String(35), "planned_age": String(65)]
        Analytics.trackEvent("button_pressed", withProperties: properties)
    }
}

extension ViewController {
    
    func setup() {
    }

    func style() {
        locationButton.translatesAutoresizingMaskIntoConstraints = false
        //locationButton.setBackgroundImage(UIImage(systemName: "location.circle.fill"), for: .normal)
        locationButton.setTitle("Press Me", for: .normal)
        locationButton.setTitleColor(.black, for: .normal)
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

//
//  fourthViewController.swift
//  Views Scroll
//
//  Created by Admin on 25.09.23.
//

import Foundation
import UIKit

class fourthViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let buttonsRoutine = buttonsRoutine(withTarget: self)
        view.backgroundColor = .systemOrange
        
        view.addSubview(buttonsRoutine.createButton(withTitle: "BACK", withFrame: CGRect(x: view.center.x - buttonsRoutine.buttonWidth / 2.0, y: view.center.y - buttonsRoutine.buttonHeight / 2.0, width: buttonsRoutine.buttonWidth, height: buttonsRoutine.buttonHeight), withAction: #selector(previousView)))
        
        let label = UILabel(frame: CGRect(x: view.center.x - 35, y: 200, width: 150, height: 40))
        label.text = "Bye, bye!"
        view.addSubview(label)
    }
    
    @objc private func previousView() {
        guard let destinationViewController = self.presentingViewController as? thirdViewController else { return }
        destinationViewController.data = "Back so soon?"
        dismiss(animated: true)
    }
}

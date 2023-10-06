//
//  thirdViewController.swift
//  Views Scroll
//
//  Created by Admin on 25.09.23.
//

import Foundation
import UIKit

class thirdViewController: UIViewController {
    
    public var data = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let buttonsRoutine = buttonsRoutine(withTarget: self)
        view.backgroundColor = .systemGreen
        view.addSubview(buttonsRoutine.createButton(withTitle: "NEXT", withFrame: CGRect(x: view.center.x - buttonsRoutine.buttonWidth / 2.0, y: view.center.y - buttonsRoutine.buttonHeight / 2.0 - buttonsRoutine.buttonsMargin / 2.0, width: buttonsRoutine.buttonWidth, height: buttonsRoutine.buttonHeight), withAction: #selector(nextView)))
        
        view.addSubview(buttonsRoutine.createButton(withTitle: "BACK", withFrame: CGRect(x: view.center.x - buttonsRoutine.buttonWidth / 2.0, y: view.center.y - buttonsRoutine.buttonHeight / 2.0 + buttonsRoutine.buttonsMargin / 2.0, width: buttonsRoutine.buttonWidth, height: buttonsRoutine.buttonHeight), withAction: #selector(previousView)))
    }
    
    @objc private func nextView() {
        let vc = fourthViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    @objc private func previousView() {
        guard let destinationViewController = self.presentingViewController as? secondViewController else { return }
        destinationViewController.data = self.data
        dismiss(animated: true, completion: nil)
    }
}

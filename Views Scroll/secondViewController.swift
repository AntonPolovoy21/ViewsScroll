//
//  secondViewController.swift
//  Views Scroll
//
//  Created by Admin on 25.09.23.
//

import Foundation
import UIKit

class secondViewController: UIViewController {
    
    public var data = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let buttonsRoutine = buttonsRoutine(withTarget: self)
        view.backgroundColor = .systemBlue
        view.addSubview(buttonsRoutine.createButton(withTitle: "NEXT", withFrame: CGRect(x: view.center.x - buttonsRoutine.buttonWidth / 2.0, y: view.center.y - buttonsRoutine.buttonHeight / 2.0 - buttonsRoutine.buttonsMargin / 2.0, width: buttonsRoutine.buttonWidth, height: buttonsRoutine.buttonHeight), withAction: #selector(nextView)))
        
        view.addSubview(buttonsRoutine.createButton(withTitle: "BACK", withFrame: CGRect(x: view.center.x - buttonsRoutine.buttonWidth / 2.0, y: view.center.y - buttonsRoutine.buttonHeight / 2.0 + buttonsRoutine.buttonsMargin / 2.0, width: buttonsRoutine.buttonWidth, height: buttonsRoutine.buttonHeight), withAction: #selector(previousView)))
    }
    
    @objc private func nextView() {
        let vc = thirdViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    @objc private func previousView() {
        guard let destinationViewController = self.presentingViewController as? ViewController else { return }
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 150, height: 40))
        label.center = destinationViewController.view.center
        label.center.y = 200
        label.text = data
        label.textAlignment = .center
        destinationViewController.view.addSubview(label)
        dismiss(animated: true, completion: nil)
    }
}

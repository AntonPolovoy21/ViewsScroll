//
//  ViewController.swift
//  Views Scroll
//
//  Created by Admin on 25.09.23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let buttonsRoutine = buttonsRoutine(withTarget: self)
        view.backgroundColor = .systemPink
        view.addSubview(buttonsRoutine.createButton(withTitle: "NEXT", withFrame: CGRect(x: view.center.x - buttonsRoutine.buttonWidth / 2.0, y: view.center.y - buttonsRoutine.buttonHeight / 2.0, width: buttonsRoutine.buttonWidth, height: buttonsRoutine.buttonHeight), withAction: #selector(nextView)))
    }
    
    @objc private func nextView() {
        let vc = secondViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
}

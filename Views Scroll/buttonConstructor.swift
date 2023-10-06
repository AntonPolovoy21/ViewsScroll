//
//  buttonConstructor.swift
//  Views Scroll
//
//  Created by Admin on 25.09.23.
//

import Foundation
import UIKit

class buttonConstructor {
    
    public func createButton(withTitle title: String, withFrame frame: CGRect, withAction action: Selector) -> UIButton {
        let button = UIButton(type: .custom)
        button.setTitle(title, for: .normal)
        button.frame = frame
        button.layer.borderWidth = 3
        button.layer.cornerRadius = 5
        button.layer.borderColor = CGColor(red: 255, green: 255, blue: 255, alpha: 1.0)
        button.backgroundColor = .black
        button.addTarget(self, action: action, for: .touchUpInside)
        return button
    }
}

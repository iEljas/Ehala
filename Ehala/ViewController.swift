//
//  ViewController.swift
//  Ehala
//
//  Created by Специалист on 08.05.2023.
//

import UIKit
import Foundation

class ViewController: UIViewController {


    @IBOutlet weak var buttonStart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
      buttonStart.applyGradient(colors: [UIColor(red: 0.27, green: 0.12, blue:0.66, alpha: 1.00).cgColor, UIColor(red: 0.88, green: 0.03, blue:0.61, alpha: 1.00).cgColor])
    
    }
}

extension UIButton {
    func applyGradient(colors : [CGColor]) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = colors
        gradientLayer.cornerRadius = layer.cornerRadius
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0)
        gradientLayer.frame = bounds
        layer.insertSublayer(gradientLayer, at: 0)
    }
}

//
//  ViewControllerSignUp.swift
//  Ehala
//
//  Created by Специалист on 10.05.2023.
//

import UIKit
import SwiftUI
import Foundation

class ViewControllerSignUp: UIViewController {

    
    @IBOutlet weak var textFieldPassword: UITextField!
    
    var iconClick = false
    let imageicon = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        imageicon.image = UIImage(named: "eye")
        let contentView = UIView()
        contentView.addSubview(imageicon)
        
        contentView.frame = CGRect(x: 0, y: 0, width: UIImage(named: "eye")!.size.width, height: UIImage(named: "eye")!.size.height)
        
        imageicon.frame = CGRect(x: -10, y: 0, width: UIImage(named: "eye")!.size.width, height: UIImage(named: "eye")!.size.height)
        textFieldPassword.rightView = contentView
        textFieldPassword.rightViewMode = .always
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action:
                                                            #selector(imageTapped(tapGestureRecognizer:)))
        imageicon.isUserInteractionEnabled = true
        imageicon.addGestureRecognizer(tapGestureRecognizer)
        
     
        }
    @objc func imageTapped (tapGestureRecognizer: UITapGestureRecognizer){
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        
        if iconClick {
            iconClick = false
            tappedImage.image = UIImage(named: "eye.slash.circle")
            textFieldPassword.isSecureTextEntry = false
        }
        else {
            iconClick = true
            tappedImage.image = UIImage(named: "eye")
            textFieldPassword.isSecureTextEntry = true
        }
        
    }
}

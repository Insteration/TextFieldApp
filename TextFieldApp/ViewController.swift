//
//  ViewController.swift
//  TextFieldApp
//
//  Created by Artem Karmaz on 1/11/19.
//  Copyright © 2019 Johansson Group. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myTextField = UITextField()
    
    fileprivate func createTextField() {
        let textFieldFrame = CGRect(x: 0, y: 0, width: 200, height: 30)
        //        myTextField.frame = textFieldFrame
        myTextField = UITextField(frame: textFieldFrame)
        myTextField.borderStyle = .roundedRect
        myTextField.contentVerticalAlignment = .center //text center
        myTextField.placeholder = "It is placeholder"
        myTextField.textAlignment = .center
        myTextField.center = self.view.center
        self.view.addSubview(myTextField)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.createTextField()
        myTextField.delegate = self
    }

}

extension ViewController: UITextFieldDelegate {
    
}

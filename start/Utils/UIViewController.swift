//
//  UIViewController.swift
//  start
//
//  Created by Tommy Jepsen on 04/07/2018.
//  Copyright © 2018 nordie. All rights reserved.
//

import Foundation
import UIKit


extension UIViewController {
    
    func showAlert(titleP: String, messageP: String) {
        let alert = UIAlertController(title: titleP, message: messageP, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func hideKeyboard() {
        self.view.endEditing(true)
    }
}

//
//  SettingsViewController.swift
//  start
//
//  Created by Tommy Jepsen on 04/07/2018.
//  Copyright © 2018 nordie. All rights reserved.
//

import Foundation
import UIKit

class SettingsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onBackPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}


//
//  FirstViewController.swift
//  start
//
//  Created by Tommy Jepsen on 04/07/2018.
//  Copyright © 2018 nordie. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class HomeViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Set token after login
        APIService.HEADERS = [
            "Authorization": "bearer BOiGuNFu7TlvXZunv4azcq3aZBAVyl",
            "Accept": "application/json"
        ]

        APIService.getNoteList(onSuccess:{ results in
            print(results)
            print("succes")
        }, onError:{ error in
            print("ERROR")
        })

        APIService.getNoteSingle(id: 5, onSuccess: { results in
            print(results)
        }, onError: { error in
            
        })
        
        let postParams: Parameters = [
             "note": "Note from iOS",
        ]
        APIService.postNote(postParams: postParams, onSuccess: { results in
            print(results)
            
        }, onError: { error in
            print(error)
            
        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onGoToSettings(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController
                self.present(newViewController, animated: true, completion: nil)
    }
    

}


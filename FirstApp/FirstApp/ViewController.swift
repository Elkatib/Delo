//
//  ViewController.swift
//  FirstApp
//
//  Created by gt650 on 15.08.2020.
//  Copyright © 2020 gt650. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var login: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func buttonTapped(_ sender: Any) {
        let log = login.text
        let pas = password.text
        
        if log == "admin" && pas == "1234" {
            print("Вход выполнен")
        }
    }
}


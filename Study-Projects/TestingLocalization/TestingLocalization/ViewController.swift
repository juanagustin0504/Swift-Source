//
//  ViewController.swift
//  TestingLocalization
//
//  Created by Webcash on 2020/01/17.
//  Copyright © 2020 WebCash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myGreetingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myGreetingLabel.text = NSLocalizedString("Hello", comment: "")
    }


}


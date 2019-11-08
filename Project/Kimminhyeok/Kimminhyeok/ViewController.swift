//
//  ViewController.swift
//  Kimminhyeok
//
//  Created by Webcash on 2019/11/06.
//  Copyright © 2019 Moon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTextBtn(_ sender: UIButton) {
        lbl.text = "김민혁"
    }
    
}


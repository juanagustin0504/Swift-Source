//
//  ViewController.swift
//  TableView
//
//  Created by Webcash on 2019/11/15.
//  Copyright © 2019 Moon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let cellIndentifier = "this is Moon's cell"
    
    let arr = ["A", "B", "C", "D", "E"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIndentifier)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellIndentifier, for: indexPath)
        
        cell.textLabel?.text = arr[indexPath.row]
        
        return cell
    }


}


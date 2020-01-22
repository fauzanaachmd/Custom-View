//
//  ViewController.swift
//  Custom View
//
//  Created by Fauzan Achmad on 22/01/20.
//  Copyright © 2020 Fauzan Achmad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var customTableView: UITableView!
    
    private var data: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for i in 1...100 {
            data.append("\(i)")
        }
        
        tableView.dataSource = self
    }

}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        
        let text = data[indexPath.row]
        
        cell.textLabel?.text = text
        
        return cell
    }
}

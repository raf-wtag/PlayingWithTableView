//
//  ViewController.swift
//  PlayingWithTableView
//
//  Created by Fahim Rahman on 4/5/21.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var dataSource = ["User One","User Two","User Three","User Four","User Five","User Six","User Seven","User Eight","User Nine","User Ten"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "table_cell")
        cell?.textLabel?.text = dataSource[indexPath.row]
        
        return cell!
    }
    
    
}


//
//  ViewController.swift
//  Week4.1
//
//  Created by 1 on 2023/9/20.
//

import UIKit

class ListViewController: UITableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 10
        case 1:
            return 5
        default:
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContentCell", for: indexPath) // here, which set up an interface builder "ContentCell"
        let data = DataSource(section: indexPath.section, row: indexPath.row)
        cell.textLabel?.text = data.content
        //set the vlue for cell
        return cell
    }
}


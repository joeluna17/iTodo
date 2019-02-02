//
//  ViewController.swift
//  iTodo
//
//  Created by Joseph Luna on 2/2/19.
//  Copyright © 2019 Joseph Luna. All rights reserved.
//

import UIKit

class TodolistViewController: UITableViewController {
    
    // Remember that with TableViews if we did not intially inherit like above from the protocol of UITableViewControllerwe have to add the UITableViewDataSource on the inheritance chain as well as the UITableView Delegate.. Remember to make the view contoller watching for changes and updating data the delegate and data source either programatically or by the Interface Builder
    
    let itemArray = ["Collect Money", "Depoit Money", "Ball Out like I'm Rich"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // the way to make the view controller the delegate and data source
        // tableView.delegate? = self
        // tableView.dataSource = self
    }

    
    //MARK: - Tableview DataSource Methods
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoItemCell",for:indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    
    //MARK: - TableVIew Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        // this code below checks to see if there is a check mark on the row and if not adds it if so, takes it away
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark   {
        tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true) // this line of code briefly selects and deselects the row(Inferace feedback)
        
    }
    
    
}


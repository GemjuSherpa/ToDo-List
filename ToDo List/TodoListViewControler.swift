//
//  ViewController.swift
//  ToDo List
//
//  Created by Gemju sherpa on 3/3/18.
//  Copyright © 2018 Gemju sherpa. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController{

    let itemArray = ["go to Coles", "Pay bills", "Reply Emails", "Check Mails", "hello"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK - TableView Data Source Methodes:

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    //MARK - tableView Delegate methodes:
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
             tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }else{
             tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }

        
       
        
        tableView.deselectRow(at: indexPath, animated: true)
    }

}


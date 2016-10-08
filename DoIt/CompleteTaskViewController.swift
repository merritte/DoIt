//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Merritte on 10/8/16.
//  Copyright © 2016 Merritte. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    @IBOutlet weak var taskLabel: UILabel!
    var task = Task()
    
    var previousVC = TasksViewController()

    override func viewDidLoad() {
       
        super.viewDidLoad()
        
        if task.important {
            taskLabel.text = "‼️\(task.name)"
        }else{
            taskLabel.text = task.name
            
        }


    }
    
    @IBAction func completeTapped(_ sender: AnyObject) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.toDoTableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }
    

    
}

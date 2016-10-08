//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Merritte on 10/7/16.
//  Copyright © 2016 Merritte. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: AnyObject) {
        // Create a Task from the outlet information
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        

    

    // Add new task to array in previous view controller
        
        previousVC.tasks.append(task)
        previousVC.toDoTableView.reloadData()
        navigationController!.popViewController(animated: true)
        

        }
    
    
    
    
}

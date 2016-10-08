//
//  TasksViewController.swift
//  DoIt
//
//  Created by Merritte on 10/6/16.
//  Copyright © 2016 Merritte. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var toDoTableView: UITableView!
    
    var tasks : [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tasks = makeTasks()
        
        toDoTableView.dataSource = self
        toDoTableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important {
            cell.textLabel?.text = "‼️\(task.name)"
        }else{
            cell.textLabel?.text = task.name
            
        }
        
        return cell
    }
    
    func makeTasks() -> [Task]{
        
        let task1 = Task()
        task1.name = "Walk the dog"
        task1.important = false

        let task2 = Task()
        task2.name = "Bike"
        task2.important = false
        
        let task3 = Task()
        task3.name = "Dance"
        task3.important = true
        
        return[task1, task2, task3]
        
        
    }

    @IBAction func plusTapped(_ sender: AnyObject) {
        
        performSegue(withIdentifier: "addSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! CreateTaskViewController
        nextVC.previousVC = self
    }
}


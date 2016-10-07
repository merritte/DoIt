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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: AnyObject) {
    }

}

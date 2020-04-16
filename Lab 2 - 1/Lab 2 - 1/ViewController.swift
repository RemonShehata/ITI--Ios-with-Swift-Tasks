//
//  ViewController.swift
//  Lab 2 - 1
//
//  Created by Remon Gerges Shehata on 12/20/19.
//  Copyright © 2019 Remon Gerges Shehata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var salaryText: UITextField!
    
    @IBAction func EmployeeBtn(_ sender: Any) {
        
        
        let enteredSalary : Int? = Int(salaryText.text!)
        
        let emp = Employee()
        let result = emp.getSalary(s: enteredSalary!)
        print("Employee salary = \(result)")
        
    }
    
    
    
    @IBAction func MangerBtn(_ sender: Any) {
        
        let enteredSalary : Int? = Int(salaryText.text!)
        
        let mgr = Manger()
        let result = mgr.getSalary(s: enteredSalary!)
        print("Manger salary = \(result)")
    }
}


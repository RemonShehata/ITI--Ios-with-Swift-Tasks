//
//  secViewController.swift
//  FirstS
//
//  Created by mac on 12/17/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class secViewController: UIViewController {

    var str : String = ""
    
    var p : change?
    
    @IBOutlet weak var secLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
 
   
    @IBAction func showFirst(_ sender: Any) {
        p?.setmyText()
        self.navigationController?.popViewController(animated: true)
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        secLabel.text = str
    }
    

}

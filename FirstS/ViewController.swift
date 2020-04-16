//
//  ViewController.swift
//  FirstS
//
//  Created by mac on 12/17/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController,change {
    func setmyText() {
        firstLabel.text = "hiii"
    }
    
    @IBOutlet weak var firstLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

 
    @IBAction func showSecond(_ sender: Any) {
        
        var sec :secViewController =  self.storyboard?.instantiateViewController(withIdentifier: "v2") as! secViewController
        sec.p = self  // [sec setP : self ] 
        sec.str = "ahmed"
        self.navigationController?.pushViewController(sec, animated: true)
        
    }
    
}


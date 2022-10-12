//
//  ViewController.swift
//  Hello Color
//
//  Created by Aravinth on 09/10/22.
//

import UIKit

class ViewController: UIViewController {

    
    
    var isPurple=false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func changeColor(_ sender: Any) {
        
        if isPurple{
            view.backgroundColor=UIColor.red
            isPurple=false
            
        }else{
            view.backgroundColor=UIColor.purple
            isPurple=true
        }
    }
}


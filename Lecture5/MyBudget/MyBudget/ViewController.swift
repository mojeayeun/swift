//
//  ViewController.swift
//  MyBudget
//
//  Created by h02 on 2017-06-05.
//  Copyright © 2017 h02. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var username: NSTextField!
    @IBOutlet weak var salary: NSTextField!
    @IBOutlet weak var product_name: NSTextField!
    @IBOutlet weak var product_price: NSTextField!
    @IBOutlet weak var final_result: NSTextField!
    
    @IBOutlet weak var message: NSTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


    @IBAction func calculate(_ sender: Any) {
        
        
        let user_salary = Int(salary.stringValue)
        let p_price = Int(product_price.stringValue)
        
     //   var u_name = username.stringValue
        let p_name = product_name.stringValue
        
        
      //  var final_message = message.stringValue
        
        let calc = Int(user_salary!) - Int(p_price!)
        
        //let r:String = String(calc)
        
        final_result.stringValue = String(calc)
        
        
        message.stringValue = "Hellow \(username.stringValue) you but \(p_name) which ther price is \(p_price!) and now you \(String(calc))"
        
        
    }
    
    
}


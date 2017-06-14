//
//  ViewController.swift
//  Login
//
//  Created by h02 on 2017-06-05.
//  Copyright © 2017 h02. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var labe1: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func move(_ sender: Any) {
        
        labe1.stringValue = "this is screen1"
        
        
    }
    
    
    

}


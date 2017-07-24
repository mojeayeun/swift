//
//  ViewController.swift
//  MyFirstApp
//
//  Created by h02 on 2017. 7. 24..
//  Copyright © 2017년 h02. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mFirstName: UITextField!
    @IBOutlet weak var mLastName: UITextField!
    
    @IBOutlet weak var mDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func testBtn(_ sender: UIButton) {
        let testValue = mFirstName.text! + " " +  mLastName.text!
        print(testValue)
        
        mDisplay.text = testValue

    }
    
   
}


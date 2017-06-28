//
//  ViewController.swift
//  Mid_term
//
//  Created by h02 on 2017-06-26.
//  Copyright © 2017 h02. All rights reserved.
//

import Cocoa
import Foundation

class ViewController: NSViewController {

    @IBOutlet weak var student_id: NSTextField!
    @IBOutlet weak var student_first_name: NSTextField!
    @IBOutlet weak var student_last_name: NSTextField!
    @IBOutlet weak var student_point: NSTextField!
    
    @IBOutlet weak var Grade: NSTextField!
    
    @IBOutlet weak var result1: NSTextField!
    @IBOutlet weak var result2: NSTextField!
    
    @IBOutlet weak var sortedResult: NSTextField!
    
    @IBOutlet weak var average: NSTextField!
    
    @IBOutlet weak var result4: NSTextField!
    var member_id = [String]()
    var member_name = [String]()
    var member_score = [String]()
    
    var member_info = [String]()
    
    var sorted_member_info = [String]()
    
    
    var array1 = [45,34,30,26,10]
    var array2 = [44,40,26]
    
    var array3 = [Int]()
    
    @IBOutlet weak var array2_sample: NSTextField!
    
    @IBOutlet weak var array1_sample: NSTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let newId = String(Int(arc4random_uniform(UInt32(21) + 10)))
        
        student_id.stringValue = newId
        result1.stringValue = "ID is generated"
        
        // Do any additional setup after loading the view.
        
        array1_sample.stringValue = String(describing: array1)
        array2_sample.stringValue = String(describing: array2)
        
        
        
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    
    @IBAction func Merge(_ sender: Any) {
        
        array3 = array1 + array2
        //array3.sorted()
        print(array3)
        
        result4.stringValue = String(describing: array3.sort(by: >))
        
        print(array3)
        result4.stringValue = String(describing: array3)
    }
    
    @IBAction func register(_ sender: Any) {
        
        member_id.append(student_id.stringValue)
        
        member_name.append(student_first_name.stringValue + " " + student_last_name.stringValue)
        
        member_score.append(student_point.stringValue)
        
        
        member_info.append("ID:" + student_id.stringValue + " Name: " + student_first_name.stringValue + " " + student_last_name.stringValue + " Score:" + student_point.stringValue + " Grade" + Grade.stringValue )
        
        result2.stringValue = ""
        for item in member_info {
           result2.stringValue =  result2.stringValue  + "[" + item + "]" + "\n"
        }

        sorted_member_info = member_info.sorted()
       sortedResult.stringValue = ""
        for item in sorted_member_info {
            sortedResult.stringValue =  sortedResult.stringValue  + "[" + item + "]" + "\n"
        }
        
    }
    
    
    
    @IBAction func average(_ sender: Any) {
        var sum:UInt?
        var cnt:UInt?
        
        sum = 0
        cnt = 0
        for item in member_score {
            sum = sum! + UInt(item)!
            cnt = cnt! + 1
        }

        let ave = sum! / cnt!
        
        average.stringValue = String(ave)
        
    }
    
    
    
    
    
     //ID Check
    @IBAction func checkId(_ sender: Any) {
        
        var retVal = false
        
        for item in member_id {
            if (item == student_id.stringValue) {
                retVal = true;
                break;
            }
        }
        
        if retVal == true{
            let newId = String(Int(arc4random_uniform(UInt32(21) + 10)))
            student_id.stringValue = newId;
            result1.stringValue = "ID is Not Unique, check again"

            
        }else{
            result1.stringValue = "ID is Unique"
        }
        
        
    }
    
    //Grad Check
    @IBAction func calGrade(_ sender: Any) {
        
        
        let point = Int(student_point.stringValue)
        
        if (point! >= 97 && point! <= 100){
            Grade.stringValue = "A+"
        }else if (point! >= 93 && point! <= 96){
           Grade.stringValue = "A"
        }else if (point! >= 90 && point! <= 92){
            Grade.stringValue = "A-"
        }else if (point! >= 87 && point! <= 89){
            Grade.stringValue = "B+"
        }else if (point! >= 83 && point! <= 86){
            Grade.stringValue = "B"
        }else if (point! >= 80 && point! <= 82){
            Grade.stringValue = "B-"
        }else if (point! >= 77 && point! <= 79){
            Grade.stringValue = "C+"
        }else if (point! >= 73 && point! <= 76){
            Grade.stringValue = "C"
        }else if (point! >= 70 && point! <= 72){
            Grade.stringValue = "C-"
        }else if (point! >= 67 && point! <= 69){
            Grade.stringValue = "D+"
        }else if (point! >= 63 && point! <= 66){
            Grade.stringValue = "D"
        }else if (point! >= 60 && point! <= 62){
            Grade.stringValue = "D-"
        }else if (point! >= 0 && point! <= 59){
            Grade.stringValue = "F"
        }else{
            Grade.stringValue = "Not Calculate"

        }
    
        
    }
    
}


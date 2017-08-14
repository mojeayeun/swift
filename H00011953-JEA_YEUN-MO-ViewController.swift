//
//  ViewController.swift
//  FinalProject
//
//  Created by h02 on 2017. 7. 31..
//  Copyright © 2017년 h02. All rights reserved.
//

import UIKit
import CryptoSwift
import Foundation


class ViewController: UIViewController {

    @IBOutlet weak var sourceFile: UITextField!
    @IBOutlet weak var sourceFileHashValue: UITextView!
    
    
    @IBOutlet weak var targetFile: UITextField!
    @IBOutlet weak var targetFileHashValue: UITextView!
    
    @IBOutlet weak var resultValue: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        sourceFile.text = "/Users/h02/Desktop/source.txt"
        targetFile.text = "/Users/h02/Desktop/target.txt"
        
    }

    
    
    @IBAction func readSourceFile(_ sender: Any) {
        
        // Read data from this file.
        let path = "/Users/h02/Desktop/source.txt"

        do {
            // Get the contents
            let contents = try NSString(contentsOfFile: path, encoding: String.Encoding.utf8.rawValue)
            sourceFileHashValue.text = contents as String?
            sourceFileHashValue.text = sourceFileHashValue.text.md5()


        }
        catch let error as NSError {
            print("Ooops! let path = (NSTemp... did not work: \(error)")
        }
    }
    
    
    
    @IBAction func readTargetFile(_ sender: Any) {
        // Read data from this file.
        let path = "/Users/h02/Desktop/target.txt"
    
        do {
            // Get the contents
            let contents = try NSString(contentsOfFile: path, encoding: String.Encoding.utf8.rawValue)
            targetFileHashValue.text = contents as String?
        }
        catch let error as NSError {
            print("Ooops! let path = (NSTemp... did not work: \(error)")
        }

    }
    
    
    
    @IBAction func CompareFile(_ sender: Any) {
        
        if (sourceFileHashValue.text == targetFileHashValue.text.md5()){
           resultValue.text = "Source & Target File is same"
        }else{
            resultValue.text = "Source & Target File is different"

        }
    }
    
}


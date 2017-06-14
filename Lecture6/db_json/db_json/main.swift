//
//  main.swift
//  db_json
//
//  Created by h02 on 2017-06-12.
//  Copyright © 2017 h02. All rights reserved.
//

import Foundation

//let address = "http://localhost/week5/json.php"
//let url = NSURL(string: address)
//
//var html_conent = NSString()
//
//do{
//
//    html_conent = try NSString(contentsOf: url! as URL, encoding:String.Encoding.isoLatin1.rawValue)
//
//
//
//}catch{print(error)}
//
//
//let myStringArr : [String] = html_conent.components(separatedBy: "[")
//
//for part in myStringArr{
//
//    let extract_1 = part.replacingOccurrences(of: "[", with: "")
//    let extract_2 = extract_1.replacingOccurrences(of: ",", with: " ")
//    let extract_3 = extract_2.replacingOccurrences(of: "]", with: "")
//
//    let student_name: String = extract_3
//    print(extract_3)
//}

//let urlPath = "http://localhost/week5/json.php"
//let url = NSURL(string: urlPath)
//
//let session = URLSession.shared
//
//let task = session.dataTask(with: url! as URL, completion: {
//    (data,response,error) -> Void in
//    
//    if error == null{
//        let urlContent = NSString(data:data!, encoding:String.Encoding.utf8.rawValue)
//        
//    }else{
//        print("Error")
//    }
//})
//
//task.resume()




//let url = NSURL(string: "http://localhost/week5/json.php")
//
//let req = NSMutableURLRequest(url: url! as URL)
//
//let session = URLSession.shared
//
//let task = session.dataTask(with: req as URLRequest, completionHandler: {
//    
//    data, res, error -> Void in
//
//    print("2222")
//
//    
//    // code
//    let urlContent = NSString(data:data!, encoding:String.Encoding.utf8.rawValue)
//    
//    print(urlContent!)
//   
//    
//}); // end task
//
//print("111")
//
//task.resume()
//
//print("222")
//
//func test() -> Void {
//    print("333")
//}


let session = URLSession.shared
let url = URL(string: "http://localhost/week5/json.php")!
let task = session.dataTask(with: url) { (data, _, _) -> Void in
    if let data = data {
        let string = String(data: data, encoding: String.Encoding.utf8)
        print(string) //JSONSerialization
    }
}
task.resume()
print("333")

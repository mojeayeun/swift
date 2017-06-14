//
//  main.swift
//  Lecture3
//
//  Created by h02 on 2017-05-29.
//  Copyright © 2017 h02. All rights reserved.
//

import Foundation



print("Please Enter Your Name:")
var name : String?
name = readLine()!
print ("Hellow MR \(name!) Welcome to Hanson")


print("Please Enter Your ID:")
var id : String?
id = readLine()!
print ("Your ID is \(id!)")


var point1 , point2 ,point3  ,point4 ,avg: UInt8?


print("Please Enter Point1:")
point1 = UInt8(readLine()!)!

print("Please Enter Point2:")
point2 = UInt8(readLine()!)!

print("Please Enter Point3:")
point3 = UInt8(readLine()!)!

print("Please Enter Point4:")
point4 = UInt8(readLine()!)!

avg = (point1! + point2! + point3! + point4!) / 4


print("Average is \(avg!)")


if avg! >= 90 && avg! <= 100 {
    print("Grade A")
    
}else if avg! >= 80 && avg! < 90 {
    print ("Grade B")
}else{
    print ("Grade C")
}



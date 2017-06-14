////
////  main.swift
////  Lecture20170529
////
////  Created by h02 on 2017-05-29.
////  Copyright © 2017 h02. All rights reserved.
////
////https://www.tutorialspoint.com/swift/swift_functions.htm
//
//
//import Foundation
//
//var selectMenu : String?
//var userNameArray = [String]()
//var passwordArray = [String]()
//
//func displayMenu(){
//    print("Welcome to Authentification System--select the menu")
//    print("1. Registration")
//    print("2. Login")
//    print("===============")
//
//    selectMenu = readLine()!
//    checkMenu(selectMenu: selectMenu!)
//
//}
//
//
//func doRegistration(){
//
//    //Registration
//    print("Enter username")
//    var userName : String?
//    userName = readLine()!
//
//    print("Enter password")
//    var passWord : String?
//    passWord = readLine()!
//
//    print("Enter confrim password")
//    var confirmPassword : String?
//    confirmPassword = readLine()!
//
//
//    if (passWord! == confirmPassword!) {
//        //print("data is sampe")
//        userNameArray.append(userName!)
//        passwordArray.append(passWord!)
//        displayMenu()
//
//    }else{
//        print("password is wroing. please enter confrim password")
//        doRegistration()
//    }
//}
//
//func checkMenu(selectMenu: String){
//    switch selectMenu {
//    case "1":
//        print("you select Registration")
//        doRegistration()
//        break
//    case "2":
//        print("you select Login")
//        break
//    case "3":
//        print(userNameArray)
//        print(passwordArray)
//        break
//    default:
//        print("it is wrong menu")
//        displayMenu()
//    }
//
//
//}
//
//displayMenu()
//
//
//
//

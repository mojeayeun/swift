//
//  main.swift
//  Homework1
//
//  Created by 모재연 on 2017. 5. 29..
//  Copyright © 2017년 Andy. All rights reserved.
//https://www.tutorialspoint.com/swift/swift_functions.htm

import Foundation
import Cocoa


var selectMenu : String?
var userNameArray = [String]()
var passwordArray = [String]()

//display menu to User
func displayMenu(){
    print("=========================")
    print("[Authentification System]")
    print("1. Registration")
    print("2. Login")
    print("=========================")
    
    selectMenu = readLine()!
    checkMenu(selectMenu: selectMenu!)
    
}

//duplication check
func checkDuplication(name: String?) -> Bool {
    
    var retVal : Bool = false
    
    for item in userNameArray {
        if (item == name!){
            retVal = true
        }
        
    }
    return retVal
}


//Registration
func doRegistration(){
    
    print("Enter username")
    var userName : String?
    userName = readLine()!
    
    if checkDuplication(name: userName!) {
        print("same username is in there, please enter another name")
        doRegistration()
    }else{
        print("Enter password")
        var passWord : String?
        passWord = readLine()!
        
        print("Enter confrim password")
        var confirmPassword : String?
        confirmPassword = readLine()!
        
        if (passWord! == confirmPassword!) {
            //print("data is sampe")
            userNameArray.append(userName!)
            passwordArray.append(passWord!)
            displayMenu()
        }else{
            print("password is wroing. please enter confrim password")
            doRegistration()
        }
    }
}

//duplication check
func checkLogin(name: String?, pwd:String?) -> Bool {
    var retVal : Bool = false
    
    for (index, item) in userNameArray.enumerated() {
        if (item == name!){
            if (passwordArray[index] == pwd!) {retVal = true}
        }
    }
    return retVal
}


//Login
func doLogin(){
    
    print("Enter login username")
    var userName : String?
    userName = readLine()!
    
    print("Enter login password")
    var passWord : String?
    passWord = readLine()!
    
    
    if checkLogin(name: userName!,pwd:passWord!) {
        print("Dear \(userName!) Welcome to System")
        exit(0)
    }else{
        print("username or password is wrong")
        displayMenu()
    }
}


func checkMenu(selectMenu: String){
    switch selectMenu {
    case "1":
        //print("you select Registration")
        doRegistration()
        break
    case "2":
        //print("you select Login")
        doLogin()
        break
    case "3":
        print(userNameArray)
        print(passwordArray)
        break
    default:
        print("it is wrong menu")
        displayMenu()
    }
}

displayMenu()

//
//  ViewController.swift
//  SnowCalls
//
//  Created by James Wu on 2019-11-26.
//  Copyright © 2019 James Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // MARK: Properties
    
    @IBOutlet weak var phoneNumberInput: UITextView!
    
    @IBOutlet weak var convertResults: UITextView!
    
    // MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func convertPhoneNumber(_ sender: Any) {
        
        //Guard against bad user input
        guard let  phoneNumberAsString = phoneNumberInput.text,phoneNumberAsString.count > 0
            else{
                convertResults.text = "Pleae enter phone numbers to convert."
                return
        }
        
        convertResults.text = ""
        
        //Split user input in multiple lines
        let eachLines = phoneNumberAsString.split(separator: "\n")
        
        //Loop for every single line in user input
        for eachLine in eachLines{
            
            //Set a variable with all effective phone number inside
            var number = ""
            
            //Loop for every single scalar in each line
            for singleScalar in eachLine {
                
                //Convert every scalar in every line to the cprrect number, ignore "-" and other bad input
                switch singleScalar {
                case "A","B","C":
                    number += "2"
                case "D","E","F":
                    number += "3"
                case "G","H","I":
                    number += "4"
                case "J","K","L":
                    number += "5"
                case "M","N","O":
                    number += "6"
                case "P","Q","R","S":
                    number += "7"
                case "T","U","V":
                    number += "8"
                case "W","X","Y","Z":
                    number += "9"
                case "1","2","3","4","5","6","7","8","9","0":
                    number += String(singleScalar)
                case "-":
                    number += ""
                default:
                    number += ""
                }
                
            }
            
            //Make sure each line has at least 10 numbers,if not,skip this line
            guard number.count >= 10 else {
                convertResults.text = "\n"
                return
            }
            
            //Set the index for the first 10 numbers because we only need that much
            let first = number.index(number.startIndex, offsetBy: 0)
            let second = number.index(number.startIndex, offsetBy: 1)
            let third = number.index(number.startIndex, offsetBy: 2)
            let fourth = number.index(number.startIndex, offsetBy: 3)
            let fifth = number.index(number.startIndex, offsetBy: 4)
            let sixth = number.index(number.startIndex, offsetBy: 5)
            let seventh = number.index(number.startIndex, offsetBy: 6)
            let eighth = number.index(number.startIndex, offsetBy: 7)
            let ninth = number.index(number.startIndex, offsetBy: 8)
            let tenth = number.index(number.startIndex, offsetBy: 9)
            
            //Print the output in the following format for every line
            convertResults.text += "\(number[first])\(number[second])\(number[third])-\(number[fourth])\(number[fifth])\(number[sixth])-\(number[seventh])\(number[eighth])\(number[ninth])\(number[tenth])\n"
            
        }
        
        
        
    }
    
    
}






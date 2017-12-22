//
//  ViewController.swift
//  TempSample
//
//  Created by Chris Riner on 12/22/17.
//  Copyright © 2017 Chris Riner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var palendromeTextField: UITextField!
    
    func isPalendrome(palendrome: String) -> Bool {
        
        let chars = Array(palendrome)
        let count = chars.count - 1
        
        for index in 0...count {
            let rightIndex = count - index
            
            if rightIndex <= index {
                return true
            }
            
            if chars[index] != chars[rightIndex] {
                return false
            }
        }
        
        return true
    }
    
    @IBAction func testWord(_ sender: UIButton) {
        var message = "Not a Palendrome"
        if let word = palendromeTextField.text {
            if isPalendrome(palendrome: word) {
                message = "This is a Palendrome"
            }
        }
        
        let alertController = UIAlertController(title: "Is a Palendrome", message: message, preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
        
    }


}


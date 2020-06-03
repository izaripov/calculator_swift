//
//  ViewController.swift
//  calc
//
//  Created by iskanderzaripov on 02.06.2020.
//  Copyright © 2020 iZaripov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var NumOnScreen:Double = 0;
    var firstNum:Double = 0;
    var operation:Int = 0;
    var math:Bool = false;
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func cifri(_ sender: UIButton) {
        if math == true {
            result.text = String(sender.tag)
            math = false
        }
        else {
            result.text = result.text! + String(sender.tag)
        }
        
        NumOnScreen = Double(result.text!)!
    }
    
    
    @IBAction func buttons(_ sender: UIButton) {
        if result.text != "" && sender.tag != 15 && sender.tag != 10 {
            firstNum = Double(result.text!)!
            
            if sender.tag == 11 { // /
                result.text = "/"
            }
            else if sender.tag == 12 { // *
                result.text = "x"
            }
            else if sender.tag == 13 { // -
                result.text = "-"
            }
            else if sender.tag == 14 {  // +
                result.text = "+"
            }
            else if sender.tag == 15 { // =
                
            }
            
            operation = sender.tag
            math = true;
        }
        else if sender.tag == 15 { // result button
            if operation == 11 {
                result.text = String(firstNum / NumOnScreen)
            }
            else if operation == 12 {
                result.text = String(firstNum * NumOnScreen)
            }
            else if operation == 13 {
                result.text = String(firstNum - NumOnScreen)
            }
            else if operation == 14 {
                result.text = String(firstNum + NumOnScreen)
            }
        }
        else if sender.tag == 10 { // reset botton
            result.text = ""
            firstNum = 0
            NumOnScreen = 0
            operation = 0
        }
            
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


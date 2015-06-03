//
//  ViewController.swift
//  Tarea0201
//
//  Created by modelo on 01/06/15.
//  Copyright (c) 2015 modelo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Screen: UILabel!
    @IBOutlet weak var operacionActual: UILabel!
    var firstNumber = Int()
    var secondNumber = Int()
    var isTypingNumber = false
    var result = Int()
    var operation = ""
    
    @IBAction func number(sender: AnyObject) {
        var number = sender.currentTitle
        if isTypingNumber {
            Screen.text = Screen.text! + number!!
        } else {
            Screen.text = number
        }
        isTypingNumber = true
    }
    
    @IBAction func operation(sender: AnyObject) {
        isTypingNumber = false
        firstNumber = Screen.text!.toInt()!
        operation = sender.currentTitle!!
        operacionActual.text = operation
    }
    
    @IBAction func equals(sender: AnyObject) {
        secondNumber = Screen.text!.toInt()!
        if operation == "+" {
            result = firstNumber + secondNumber
        } else if operation == "-" {
            result = firstNumber - secondNumber
        } else if operation == "x" {
            result = firstNumber * secondNumber
        } else {
            if secondNumber > 0 {
                result = firstNumber / secondNumber
            } else {
                result = 0
            }
            
        }
        if (isTypingNumber) {
            firstNumber = secondNumber
        }
        Screen.text = "\(result)"
        //firstNumber = result
        isTypingNumber = false
        operacionActual.text = ""
    }
    
    @IBAction func clear(sender: AnyObject) {
        firstNumber = 0
        secondNumber = 0
        isTypingNumber = false
        result = 0
        Screen.text = "0"
        operacionActual.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


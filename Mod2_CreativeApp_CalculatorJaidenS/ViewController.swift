//
//  ViewController.swift
//  Mod2_CreativeApp_CalculatorJaidenS
//
//  Created by Tiger Coder on 9/20/20.
//  Copyright © 2020 clc.JXSchraut. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var TF1: UITextField!
    @IBOutlet weak var TF2: UITextField!
    var adv: BooleanLiteralType = true
    var n = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        TF1.delegate = self
        TF2.delegate = self
        
        
        // Do any additional setup after loading the view.
    }
    
    var num1o: Double
    var num2o: Double
    @IBAction func addButton(_ sender: Any) {
        n=1
        adv=false
    }
    
    @IBAction func subtractButton(_ sender: Any) {
        n=2
        adv=false
    }
    
    @IBAction func multiplyButton(_ sender: Any) {
        n=3
        adv = false
        
    }
    
    @IBAction func divideButton(_ sender: Any) {
        n=4
        adv = false
       
    }
    
    @IBAction func aCircle(_ sender: Any) {
        n=1
    }
    
    @IBAction func cCircle(_ sender: Any) {
        n=2
    }
    
    @IBAction func aRectangle(_ sender: Any) {
        n=3
    }
    @IBAction func cRectangle(_ sender: Any) {
        n=4
    }
    
    @IBAction func aRightTriangle(_ sender: Any) {
        n=5
    }
    
    @IBAction func pythagoreanTheoremButton(_ sender: Any) {
        n=6
    }
    
    @IBAction func modOperatorButton(_ sender: Any) {
        n=7
    }
    
    
    
    
    @IBAction func calculateButton(_ sender: Any) {
        let num1 = Double(TF1.text!)!
        let num2 = Double(TF2.text!)!
        let r: Double = (num1 + num2)/2
        var answer:Double = 0
        if adv {
            if n==1 {
                answer = Double.pi*(pow(r,2))
            }
            if n==2 {
                answer = Double.pi*(r*4)
            }
            if(n==3){
                answer = num2 * num1
            }
            if n==4 {
                answer = 2*(num2) + 2*(num1)
            }
            if n==5 {
                answer = (num1 * num2)/2
            }
            if n==6 {
                answer = (pow(num1,2)+pow(num2, 2)).squareRoot()
            }
            if n==7 {
                answer = num1.truncatingRemainder(dividingBy: num2)
            }
        } else{ if(n==1) {
            answer = num1+num2
        }
            if(n==2){
            answer = num1 - num2
        }
            if(n==3){
                answer = num2 * num1
            }
            if n==4 {
                answer = num1/num2
            }
        
    }
        answerLabel.text = String(answer)
    }
    
    
    
    
    
    
    
}


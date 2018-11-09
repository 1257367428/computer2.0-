//
//  ViewController.swift
//  computer2.0
//
//  Created by 20171105117 on 2018/10/11.
//  Copyright © 2018年 20171105117. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    var temp:Double = 0
    var sum:Double = 0
    var flag = 0
    var calflag = 0
    var judge = 0
    @IBOutlet weak var show: UITextField!
    
    @IBOutlet weak var equal: UITextField!
    
    @IBOutlet weak var transition: UITextField!
    var  cyan:Bool = false
    
    @IBAction func change(_ sender: Any) {
        if(cyan){
            self.view.backgroundColor = UIColor.cyan
            cyan = false
        }else{
            self.view.backgroundColor = UIColor.black
            cyan = true
        }
    }
    @IBAction func button0(_ sender: Any) {
        if calflag == 1
        {
        show.text = show.text!+"0"
        }
        else
        {
            show.text = "0"
        }
          calflag = 1
    }
    @IBAction func button1(_ sender: Any) {
        if calflag == 1
        {
            show.text = show.text!+"1"
        }
        else
        {
            show.text = "1"
        }
           calflag = 1
    }
    @IBAction func button2(_ sender: Any) {
        if calflag == 1
        {
            show.text = show.text!+"2"
        }
        else
        {
            show.text = "2"
        }
         calflag = 1
    }
    @IBAction func button3(_ sender: Any) {
        if calflag == 1
        {
            show.text = show.text!+"3"
        }
        else
        {
            show.text = "3"
        }
     calflag = 1
    }
    @IBAction func button4(_ sender: Any) {
        if calflag == 1
        {
            show.text = show.text!+"4"
        }
        else
        {
            show.text = "4"
        }
       calflag = 1
    }
    @IBAction func button5(_ sender: Any) {
        if calflag == 1
        {
            show.text = show.text!+"5"
        }
        else
        {
            show.text = "5"
        }
         calflag = 1
    }
    @IBAction func button6(_ sender: Any) {
        if calflag == 1
        {
            show.text = show.text!+"6"
        }
        else
        {
            show.text = "6"
        }
          calflag = 1
    }
    @IBAction func button7(_ sender: Any) {
        if calflag == 1
        {
            show.text = show.text!+"7"
        }
        else
        {
            show.text = "7"
        }
          calflag = 1
    }
    @IBAction func button8(_ sender: Any) {
        if calflag == 1
        {
            show.text = show.text!+"8"
        }
        else
        {
            show.text = "8"
        }
          calflag = 1
    }
    @IBAction func button9(_ sender: Any) {
        if calflag == 1
        {
            show.text = show.text!+"9"
        }
        else
        {
            show.text = "9"
        }
          calflag = 1
    }
    @IBAction func spot(_ sender: Any) {
        show.text = ""
        if calflag == 1
        {
            show.text = show.text!+"."
        }
        else
        {
            show.text = "."
        }
        calflag = 1
    }
    @IBAction func plus(_ sender: Any) {
        if flag == 1
        {
            show.text = "\(temp + Double(show.text!)!)"
        }
        temp = Double(show.text!)!
        calflag = 2
        flag = 1
        transition.text = "+"
    }
    @IBAction func reduce(_ sender: Any) {
        if flag == 2
        {
            show.text = "\(temp - Double(show.text!)!)"
        }
        temp = Double(show.text!)!
        calflag = 2
        flag = 2
        transition.text = "-"
    }
    @IBAction func ride(_ sender: Any) {
        if flag == 3
        {
            show.text = "\(temp * Double(show.text!)!)"
        }
        temp = Double(show.text!)!
        calflag = 2
        flag = 3
        transition.text = "×"
    }
    @IBAction func expect(_ sender: Any) {
        if flag == 4
        {
            show.text = "\(temp / Double(show.text!)!)"
        }
        temp = Double(show.text!)!
        calflag = 2
        flag = 4
        transition.text = "÷"
    }
    @IBAction func radical(_ sender: Any) {
        temp = Double(Double(show.text!)!)
        flag = 5
        transition.text = "√"
    }
    @IBAction func square(_ sender: Any) {
        temp = Double(Double(show.text!)!)
        flag = 6
        transition.text = "^"
    }
    
    @IBAction func percent(_ sender: Any) {
        temp = Double(Double(show.text!)!)
        flag = 7
        transition.text = "%"
    }
    @IBAction func returnzero(_ sender: Any) {
        show.text = ""
        equal.text = ""
        transition.text = ""
        flag = 0
        calflag = 0
    }
    @IBAction func Beequalto(_ sender: Any) {
        if flag == 1
        {
            sum = temp + Double(show.text!)!
        }
        else if flag == 2
        {
            sum = temp - Double(show.text!)!
        }
        else if flag == 3
        {
            sum = temp * Double(show.text!)!
        }
        else if flag == 4
        {
            sum = temp / Double(show.text!)!
        }
        else if flag == 5
        {
            sum = sqrt(temp)
        }
        else if flag == 6
        {
            sum = temp * temp
        }
        else if flag == 7
        {
            sum = temp/100
        }
        equal.text = "\(sum)"
    }
}


//
//  ViewController.swift
//  method
//
//  Created by 所　紀彦 on 2019/05/30.
//  Copyright © 2019 所　紀彦. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var maeText:UITextField!
    @IBOutlet var atoText:UITextField!
    @IBOutlet var answerLabel:UILabel!
    
//    var number1: Int = 0
//    var number2: Int = 0
    var answer : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func keisan(){
        hanbetsu()
        
        //ここにint型に直して後の計算結果を持ってきてlabelに表示させる
        answerLabel.text = String(answer)
    }
    
    
    func henkan(n:Int) -> Int{
        //hanbetsuでInt型と判断された時にこのメソッドで実際にInt型に変換する
        let number1 = Int(maeText.text!)!
        let number2 = Int(atoText.text!)!
        answer = number2 + number1
        return n
    }
    
    func hanbetsu(){
        //このメソッドでtextFieldに記述したものがInt型に変換可能かを判断したい
        if Int(maeText.text!) != nil && Int(atoText.text!) != nil {
            henkan(n: answer)
            print("trueだった")
        }else{
            print("falseだった")
        }
        
    }

    
    
    
    
}


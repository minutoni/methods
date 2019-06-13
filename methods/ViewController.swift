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
    
    var number1: Int = 0
    var number2: Int = 0
    var answer : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    func hanbetsu(){
        //このメソッドでtextFieldに記述したものがInt型に変換可能かを判断したい
        if let textFieldString = Int(maeText.text!) {
            henkan(n: textFieldString)
        }else{
            answerLabel.text = "数字を入力してください"
        }
        
        //        if maeText.text is Int {
        //            number1 = Int(maeText.text!)!
        //        }else if maeText.text is String{
        //        }
        //
        //        if atoText.text is Int {
        //            number2 = Int(atoText.text!)!
        //        }else if atoText.text is String{
        //        }
    }
    
    
    
    
    func henkan(n:Int) -> Int{
        hanbetsu()
        //hanbetsuでInt型と判断された時にこのメソッドで実際にInt型に変換する
        number1 = Int(maeText.text!)!
        number2 = Int(atoText.text!)!
        return n
    }
    
    func equal (){
        //number1と2を足すメソッド（変換と一緒でもいいかも？
        
        
    }
    
    @IBAction func keisan(){
        answer = number2 + number1
        //ここにint型に直して後の計算結果を持ってきてlabelに表示させる
        answerLabel.text = String(answer)
    }
    
    
}


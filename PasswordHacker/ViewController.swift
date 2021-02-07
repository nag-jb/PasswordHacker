//
//  ViewController.swift
//  PasswordHacker
//
//  Created by Sallivan James on 2021/02/07.
//

import UIKit

class ViewController: UIViewController {
    
//    結果表示用ラベル
    //右から1番目
    @IBOutlet var resultLabel1: UILabel!
    //右から2番目
    @IBOutlet var resultLabel2: UILabel!
    //右から3番目
    @IBOutlet var resultLabel3: UILabel!
    //右から4番目
    @IBOutlet var resultLabel4: UILabel!
    
//    カウント表示用ラベル
    @IBOutlet var countLabel: UILabel!
    
//    秘密のパスワード
    var password: Int = 1192

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func start(){
        for i in 0...9999{
            RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.0005))
//            解析中の数字を表示する
            countLabel.text = String(i)
            
//            passwordがiと一致したら
            if i == password {
//                passwordの桁ごとの数字を入れる配列
                
                var digits = [Int]()
                for _ in 0...3{
                    digits.append(password % 10)
                    password = password / 10
                }
                
                resultLabel1.text = String(digits[0])
                resultLabel2.text = String(digits[1])
                resultLabel3.text = String(digits[2])
                resultLabel4.text = String(digits[3])
            }
        }
    }
    
    @IBAction func reset(){
//        passwordを1192に再設定する
        password = 1192
        
//        countLabelの表示を元に戻す
        countLabel.text = "「START」ボタンを押して解析"
        
//        ラベルの表示を全て0に戻す
        resultLabel1.text = "0"
        resultLabel2.text = "0"
        resultLabel3.text = "0"
        resultLabel4.text = "0"
    }


}


//
//  ViewController.swift
//  Nabeatsu
//
//  Created by nagata on 2017/06/19.
//  Copyright © 2017年 Life is Tech!. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var faceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func isAho() -> Bool {
        // 問題1: 3の倍数かどうか調べる
        if number % 3 == 0 {
            return true
        }
        // 問題2: 1の位が3かどうか調べる
        // 問題3: 10の位が3かどうか調べる
        // 問題4: 3がつくかどうか調べる
        // 問題4をやるときは問題3と問題2の答えを消してから書こう
        var checknum : Int = number
        while checknum != 0 {
            if checknum % 10 == 3 {
                return true
            } else {
                checknum = checknum / 10
            }
        }
        return false
    }
    
    func isLove() -> Bool {
        // オリジナル：26がついていたら恋をする
        var lovenum : Int = number
        while lovenum != 0 {
            if lovenum % 100 == 26 {
                return true
            } else {
                lovenum = lovenum / 100
            }
        }
        return false
    }
    
    @IBAction func plusButton(){
        number = number + 1
        countLabel.text = String(number)
        
        if isLove() == true {
            
         faceLabel.text = "😍"
        } else if isAho() == true {
            
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        } else {
            
            faceLabel.text = "(゜o゜)"
        }
    }
    
    @IBAction func reset(){
        number = 0
        countLabel.text = String(number)
    }

}


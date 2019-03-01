//
//  timeViewController.swift
//  conversion
//
//  Created by Yolanda H. on 2019/1/6.
//  Copyright © 2019 Yolanda H. All rights reserved.
//

import UIKit

class timeViewController: UIViewController {
    @IBOutlet weak var uplus8Label: UILabel!
    @IBOutlet weak var ucut12Label: UILabel!
    @IBOutlet weak var uplus9Label: UILabel!
    @IBOutlet weak var uplus1Label: UILabel!
    @IBOutlet weak var uplus12Label: UILabel!
    @IBOutlet weak var ucut8Label: UILabel!
    @IBOutlet weak var utcLabel: UILabel!
    @IBOutlet weak var datepickerView: UIView!
    @IBOutlet weak var datepicker: UIDatePicker!
    @IBOutlet weak var topUTC: UILabel!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var topButton: UIButton!
    let dateformat = DateFormatter()
    func utcFunc(){
        datepicker.locale = Locale(identifier: "zh-TW")
        dateformat.locale = Locale(identifier: "zh-TW")
        dateformat.dateFormat = "MMMd日  HH:mm"
        let conversionTime = datepicker.date
        let timeString = dateformat.string(from: conversionTime)
        topButton.setTitle(timeString, for: UIControl.State.normal)
        let utcPlus8 = conversionTime + 3600 * 8
        let utcPlus8String = dateformat.string(from: utcPlus8)
        uplus8Label.text = utcPlus8String
        let utcCut12 = conversionTime - 3600 * 12
        let utcCut12String = dateformat.string(from: utcCut12)
        ucut12Label.text = utcCut12String
        let utcPlus9 = conversionTime + 3600 * 9
        let utcPlus9String = dateformat.string(from: utcPlus9)
        uplus9Label.text = utcPlus9String
        let utcPlus1 = conversionTime + 3600 * 1
        let utcPlus1String = dateformat.string(from: utcPlus1)
        uplus1Label.text = utcPlus1String
        let utcPlus12 = conversionTime + 3600 * 12
        let utcPlus12String = dateformat.string(from: utcPlus12)
        uplus12Label.text = utcPlus12String
        let utcCut8 = conversionTime - 3600 * 8
        let utcCut8String = dateformat.string(from: utcCut8)
        ucut8Label.text = utcCut8String
        utcLabel.text = topButton.currentTitle
    }
    func uplus8Func(){
        datepicker.locale = Locale(identifier: "zh-TW")
        dateformat.locale = Locale(identifier: "zh-TW")
        dateformat.dateFormat = "MMMd日  HH:mm"
        let conversionTime = datepicker.date
        let timeString = dateformat.string(from: conversionTime)
        topButton.setTitle(timeString, for: UIControl.State.normal)
        let utc = conversionTime - 3600 * 8
        let utcString = dateformat.string(from: utc)
        utcLabel.text = utcString
        let utcPlus1 = conversionTime - 3600 * 7
        let utcPlus1String = dateformat.string(from: utcPlus1)
        uplus1Label.text = utcPlus1String
        let utcPlus9 = conversionTime + 3600 * 1
        let utcPlus9String = dateformat.string(from: utcPlus9)
        uplus9Label.text = utcPlus9String
        let utcPlus12 = conversionTime + 3600 * 4
        let utcPlus12String = dateformat.string(from: utcPlus12)
        uplus12Label.text = utcPlus12String
        let utcCut8 = conversionTime - 3600 * 16
        let utcCut8String = dateformat.string(from: utcCut8)
        ucut8Label.text = utcCut8String
        let utcCut12 = conversionTime - 3600 * 20
        let utcCut12String = dateformat.string(from: utcCut12)
        ucut12Label.text = utcCut12String
        uplus8Label.text = topButton.currentTitle
    }
    func uplus1Func(){
        datepicker.locale = Locale(identifier: "zh-TW")
        dateformat.locale = Locale(identifier: "zh-TW")
        dateformat.dateFormat = "MMMd日  HH:mm"
        let conversionTime = datepicker.date
        let timeString = dateformat.string(from: conversionTime)
        topButton.setTitle(timeString, for: UIControl.State.normal)
        let utc = conversionTime - 3600 * 1
        let utcString = dateformat.string(from: utc)
        utcLabel.text = utcString
        let utcPlus8 = conversionTime + 3600 * 7
        let utcPlus8String = dateformat.string(from: utcPlus8)
        uplus8Label.text = utcPlus8String
        let utcPlus9 = conversionTime + 3600 * 8
        let utcPlus9String = dateformat.string(from: utcPlus9)
        uplus9Label.text = utcPlus9String
        let utcPlus12 = conversionTime + 3600 * 11
        let utcPlus12String = dateformat.string(from: utcPlus12)
        uplus12Label.text = utcPlus12String
        let utcCut8 = conversionTime - 3600 * 9
        let utcCut8String = dateformat.string(from: utcCut8)
        ucut8Label.text = utcCut8String
        let utcCut12 = conversionTime - 3600 * 13
        let utcCut12String = dateformat.string(from: utcCut12)
        ucut12Label.text = utcCut12String
        uplus1Label.text = topButton.currentTitle
    }
    func uplus9Func(){
        datepicker.locale = Locale(identifier: "zh-TW")
        dateformat.locale = Locale(identifier: "zh-TW")
        dateformat.dateFormat = "MMMd日  HH:mm"
        let conversionTime = datepicker.date
        let timeString = dateformat.string(from: conversionTime)
        topButton.setTitle(timeString, for: UIControl.State.normal)
        let utc = conversionTime - 3600 * 9
        let utcString = dateformat.string(from: utc)
        utcLabel.text = utcString
        let utcPlus8 = conversionTime - 3600 * 1
        let utcPlus8String = dateformat.string(from: utcPlus8)
        uplus8Label.text = utcPlus8String
        let utcPlus1 = conversionTime - 3600 * 8
        let utcPlus1String = dateformat.string(from: utcPlus1)
        uplus1Label.text = utcPlus1String
        let utcPlus12 = conversionTime + 3600 * 3
        let utcPlus12String = dateformat.string(from: utcPlus12)
        uplus12Label.text = utcPlus12String
        let utcCut8 = conversionTime - 3600 * 17
        let utcCut8String = dateformat.string(from: utcCut8)
        ucut8Label.text = utcCut8String
        let utcCut12 = conversionTime - 3600 * 21
        let utcCut12String = dateformat.string(from: utcCut12)
        ucut12Label.text = utcCut12String
        uplus9Label.text = topButton.currentTitle
    }
    func uplus12Func(){
        datepicker.locale = Locale(identifier: "zh-TW")
        dateformat.locale = Locale(identifier: "zh-TW")
        dateformat.dateFormat = "MMMd日  HH:mm"
        let conversionTime = datepicker.date
        let timeString = dateformat.string(from: conversionTime)
        topButton.setTitle(timeString, for: UIControl.State.normal)
        let utc = conversionTime - 3600 * 12
        let utcString = dateformat.string(from: utc)
        utcLabel.text = utcString
        let utcPlus8 = conversionTime - 3600 * 4
        let utcPlus8String = dateformat.string(from: utcPlus8)
        uplus8Label.text = utcPlus8String
        let utcPlus9 = conversionTime - 3600 * 3
        let utcPlus9String = dateformat.string(from: utcPlus9)
        uplus9Label.text = utcPlus9String
        let utcPlus1 = conversionTime - 3600 * 11
        let utcPlus1String = dateformat.string(from: utcPlus1)
        uplus1Label.text = utcPlus1String
        let utcCut8 = conversionTime - 3600 * 20
        let utcCut8String = dateformat.string(from: utcCut8)
        ucut8Label.text = utcCut8String
        let utcCut12 = conversionTime - 3600 * 24
        let utcCut12String = dateformat.string(from: utcCut12)
        ucut12Label.text = utcCut12String
        uplus12Label.text = topButton.currentTitle
    }
    func ucut8Func(){
        datepicker.locale = Locale(identifier: "zh-TW")
        dateformat.locale = Locale(identifier: "zh-TW")
        dateformat.dateFormat = "MMMd日  HH:mm"
        let conversionTime = datepicker.date
        let timeString = dateformat.string(from: conversionTime)
        topButton.setTitle(timeString, for: UIControl.State.normal)
        let utc = conversionTime + 3600 * 8
        let utcString = dateformat.string(from: utc)
        utcLabel.text = utcString
        let utcPlus8 = conversionTime + 3600 * 16
        let utcPlus8String = dateformat.string(from: utcPlus8)
        uplus8Label.text = utcPlus8String
        let utcPlus9 = conversionTime + 3600 * 17
        let utcPlus9String = dateformat.string(from: utcPlus9)
        uplus9Label.text = utcPlus9String
        let utcPlus12 = conversionTime + 3600 * 20
        let utcPlus12String = dateformat.string(from: utcPlus12)
        uplus12Label.text = utcPlus12String
        let utcPlus1 = conversionTime + 3600 * 9
        let utcPlus1String = dateformat.string(from: utcPlus1)
        uplus1Label.text = utcPlus1String
        let utcCut12 = conversionTime - 3600 * 4
        let utcCut12String = dateformat.string(from: utcCut12)
        ucut12Label.text = utcCut12String
        ucut8Label.text = topButton.currentTitle
    }
    func ucut12Func(){
        datepicker.locale = Locale(identifier: "zh-TW")
        dateformat.locale = Locale(identifier: "zh-TW")
        dateformat.dateFormat = "MMMd日  HH:mm"
        let conversionTime = datepicker.date
        let timeString = dateformat.string(from: conversionTime)
        topButton.setTitle(timeString, for: UIControl.State.normal)
        let utc = conversionTime + 3600 * 12
        let utcString = dateformat.string(from: utc)
        utcLabel.text = utcString
        let utcPlus8 = conversionTime + 3600 * 20
        let utcPlus8String = dateformat.string(from: utcPlus8)
        uplus8Label.text = utcPlus8String
        let utcPlus9 = conversionTime + 3600 * 21
        let utcPlus9String = dateformat.string(from: utcPlus9)
        uplus9Label.text = utcPlus9String
        let utcPlus12 = conversionTime + 3600 * 24
        let utcPlus12String = dateformat.string(from: utcPlus12)
        uplus12Label.text = utcPlus12String
        let utcCut8 = conversionTime + 3600 * 4
        let utcCut8String = dateformat.string(from: utcCut8)
        ucut8Label.text = utcCut8String
        let utcPlus1 = conversionTime + 3600 * 13
        let utcPlus1String = dateformat.string(from: utcPlus1)
        uplus1Label.text = utcPlus1String
        ucut12Label.text = topButton.currentTitle
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func returnButton(_ sender: UIButton) {
        datepickerView.isHidden = true
        
        if topLabel.text == "英國, 葡萄牙, 摩洛哥, 冰島" {
            utcFunc()
        }
        else if topLabel.text == "台灣, 中國, 馬來西亞, 菲律賓" {
            uplus8Func()
        }
        else if topLabel.text == "美國貝克島"{
            ucut12Func()
        }
        else if topLabel.text == "美國加州, 加拿大卑詩省"{
        ucut8Func()
        }
        else if topLabel.text == "紐西蘭, 斐濟"{
        uplus12Func()
        }
        else if topLabel.text == "法國, 摩納哥, 奈及利亞"{
        uplus1Func()
        }
        else if topLabel.text == "日本, 韓國, 朝鮮, 帛琉"{
        uplus9Func()
        }
    }
    
    @IBAction func conversionButton(_ sender: UIButton) {
        datepickerView.isHidden = false
        datepicker.locale = Locale(identifier: "zh-TW")
    }
    @IBAction func uplus8Button(_ sender: UIButton) {
        topUTC.text = sender.currentTitle
        topLabel.text = "台灣, 中國, 馬來西亞, 菲律賓"
        uplus8Func()
    }
    @IBAction func ucut12Button(_ sender: UIButton) {
        topUTC.text = sender.currentTitle
        topLabel.text = "美國貝克島"
        ucut12Func()
    }
    @IBAction func uplus9Button(_ sender: UIButton) {
        topUTC.text = sender.currentTitle
        topLabel.text = "日本, 韓國, 朝鮮, 帛琉"
        uplus9Func()
    }
    @IBAction func uplus1Button(_ sender: UIButton) {
        topUTC.text = sender.currentTitle
        topLabel.text = "法國, 摩納哥, 奈及利亞"
        uplus1Func()
    }
    @IBAction func uplus12Button(_ sender: UIButton) {
        topUTC.text = sender.currentTitle
        topLabel.text = "紐西蘭, 斐濟"
        uplus12Func()
    }
    @IBAction func ucut8Button(_ sender: UIButton) {
        topUTC.text = sender.currentTitle
        topLabel.text = "美國加州, 加拿大卑詩省"
        ucut8Func()
    }
    @IBAction func utcButton(_ sender: UIButton) {
        topUTC.text = sender.currentTitle
        topLabel.text = "英國, 葡萄牙, 摩洛哥, 冰島"
        utcFunc()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

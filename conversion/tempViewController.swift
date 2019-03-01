//
//  tempViewController.swift
//  conversion
//
//  Created by Yolanda H. on 2019/1/6.
//  Copyright © 2019 Yolanda H. All rights reserved.
//

import UIKit

class tempViewController: UIViewController {

    @IBOutlet weak var topTextField: UITextField!
    @IBOutlet weak var topLeftLabel: UILabel!
    @IBOutlet weak var topRightLabel: UILabel!
    @IBOutlet weak var fahLabel: UILabel!
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var kLabel: UILabel!
    @IBOutlet weak var rLabel: UILabel!
    @IBOutlet weak var reLabel: UILabel!
    @IBOutlet weak var nLabel: UILabel!
    func conversionF(){
        let fah = Float(topTextField.text!)
        fahLabel.text = String(fah!)
        let celsius = (fah! - 32) * 5 / 9
        celsiusLabel.text = String(format: "%.2f", celsius)
        let kTemp = (fah! + 459.67) * 5 / 9
        kLabel.text = String(format: "%.2f", kTemp)
        let rTemp = fah! + 459.67
        rLabel.text = String(format: "%.2f", rTemp)
        let reTemp = (fah! - 32) * 4 / 9
        reLabel.text = String(format: "%.2f", reTemp)
        let nTemp = (fah! - 32) * 11 / 60
        nLabel.text = String(format: "%.2f", nTemp)
    }
    func conversionC(){
        let celsius = Float(topTextField.text!)
        celsiusLabel.text = String(celsius!)
        let fah = celsius! * 9 / 5 + 32
        fahLabel.text = String(format: "%.2f", fah)
        let kTemp = celsius! + 273.15
        kLabel.text = String(format: "%.2f", kTemp)
        let rTemp = (celsius! + 273.15) * 9 / 5
        rLabel.text = String(format: "%.2f", rTemp)
        let reTemp = celsius! * 4 / 5
        reLabel.text = String(format: "%.2f", reTemp)
        let nTemp = celsius! * 33 / 100
        nLabel.text = String(format: "%.2f", nTemp)
    }
    func conversionK(){
        let kTemp = Float(topTextField.text!)
        kLabel.text = String(kTemp!)
        let fah = kTemp! * 9 / 5 - 459.67
        fahLabel.text = String(format: "%.2f", fah)
        let celsius = kTemp! - 273.15
        celsiusLabel.text = String(format: "%.2f", celsius)
        let nTemp = (kTemp! - 273.15) * 33 / 100
        nLabel.text = String(format: "%.2f", nTemp)
        let rTemp = kTemp! * 9 / 5
        rLabel.text = String(format: "%.2f", rTemp)
        let reTemp = (kTemp! - 273.15) * 4 / 5
        reLabel.text = String(format: "%.2f", reTemp)
    }
    func conversionR(){
        let rTemp = Float(topTextField.text!)
        rLabel.text = String(rTemp!)
        let fah = rTemp! - 459.67
        fahLabel.text = String(format: "%.2f", fah)
        let celsius = rTemp! * 5 / 9 - 273.15
        celsiusLabel.text = String(format: "%.2f", celsius)
        let nTemp = (rTemp! - 491.67) * 11 / 60
        nLabel.text = String(format: "%.2f", nTemp)
        let kTemp = rTemp! * 5 / 9
        kLabel.text = String(format: "%.2f", kTemp)
        let reTemp = (rTemp! - 491.67) * 4 / 9
        reLabel.text = String(format: "%.2f", reTemp)
    }
    func conversionRE(){
        let reTemp = Float(topTextField.text!)
        reLabel.text = String(reTemp!)
        let fah = reTemp! * 9 / 4 + 32
        fahLabel.text = String(format: "%.2f", fah)
        let celsius = reTemp! * 5 / 4
        celsiusLabel.text = String(format: "%.2f", celsius)
        let nTemp = reTemp! * 33 / 80
        nLabel.text = String(format: "%.2f", nTemp)
        let kTemp = reTemp! * 5 / 4 + 273.15
        kLabel.text = String(format: "%.2f", kTemp)
        let rTemp = reTemp! * 9 / 4 + 491.67
        rLabel.text = String(format: "%.2f", rTemp)
    }
    func conversionN(){
        let nTemp = Float(topTextField.text!)
        nLabel.text = String(nTemp!)
        let fah = nTemp! * 60 / 11 + 32
        fahLabel.text = String(format: "%.1f", fah)
        let celsius = nTemp! * 100 / 33
        celsiusLabel.text = String(format: "%.2f", celsius)
        let reTemp = nTemp! * 80 / 33
        reLabel.text = String(format: "%.1f", reTemp)
        let rTemp = nTemp! * 60 / 11 + 491.67
        rLabel.text = String(format: "%.2f", rTemp)
        let kTemp = nTemp! * 100 / 33 + 273.15
        kLabel.text = String(format: "%.2f", kTemp)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func fahButton(_ sender: UIButton) {
        topLeftLabel.text = sender.currentTitle
        topRightLabel.text = "華氏度"
        conversionF()
    }
    @IBAction func celsiusButton(_ sender: UIButton) {
        topLeftLabel.text = sender.currentTitle
        topRightLabel.text = "攝氏度"
        conversionC()
    }
    @IBAction func kButton(_ sender: UIButton) {
        topLeftLabel.text = sender.currentTitle
        topRightLabel.text = "開氏溫標"
        conversionK()
    }
    @IBAction func rButton(_ sender: UIButton) {
        topLeftLabel.text = sender.currentTitle
        topRightLabel.text = "蘭金溫標"
        conversionR()
    }
    @IBAction func reButton(_ sender: UIButton) {
        topLeftLabel.text = sender.currentTitle
        topRightLabel.text = "列氏溫標"
        conversionRE()
    }
    @IBAction func nButton(_ sender: UIButton) {
        topLeftLabel.text = sender.currentTitle
        topRightLabel.text = "牛頓溫標"
        conversionN()
    }
    @IBAction func topTextFunc(_ sender: UITextField) {
        if topTextField.text == "" {
            topTextField.text = "1"
        }
        if topRightLabel.text == "華氏度" {
            conversionF()
        }
        else if topRightLabel.text == "攝氏度" {
            conversionC()
        }
        else if topRightLabel.text == "開氏溫標" {
            conversionK()
        }
        else if topRightLabel.text == "蘭金溫標"{
            conversionR()
        }
        else if topRightLabel.text == "列氏溫標"{
            conversionRE()
        }
        else if topRightLabel.text == "牛頓溫標"{
            conversionN()
        }
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

//
//  payViewController.swift
//  conversion
//
//  Created by Yolanda H. on 2019/1/6.
//  Copyright © 2019 Yolanda H. All rights reserved.
//

import UIKit

class payViewController: UIViewController {
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var taxLabel: UILabel!
    @IBOutlet weak var servicefeeLabel: UILabel!
    @IBOutlet weak var priceText: UITextField!
    @IBOutlet weak var sstLabel: UILabel!
    @IBOutlet weak var servicefeeText: UITextField!
    @IBOutlet weak var taxSwitch: UISwitch!
    @IBOutlet weak var servicefeeSwitch: UISwitch!
    @IBOutlet weak var stringLabel: UILabel!
    @IBOutlet weak var countView: UIView!
    var sst = 0.06
    var servicePercent = 0.1
    var price = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func nilfunc(){
        taxLabel.text = "-"
        servicefeeLabel.text = "-"
        totalLabel.text = "-"
        countView.isHidden = true
        stringLabel.text = "請確認所有欄位填寫完整"
    }
    func countFunc(){
        if priceText.text != "" {
            price = Double(priceText.text!)!
            let tax = price * sst
            let total = price * (1+sst) * (1 + servicePercent / 100)
            let servicefee = price * (1+sst) * servicePercent / 100
            taxLabel.text = String(format:"%.2f", tax)
            servicefeeLabel.text = String(format:"%.2f", servicefee)
            totalLabel.text = String(format:"%.2f", total)
            countView.isHidden = false
        }
        else{
            nilfunc()
        }
    }
    @IBAction func priceEnter(_ sender: UITextField) {
    }
    @IBAction func dismissKeyboard(_ sender: UITextField) {
    }
    
    @IBAction func taxSwitchFunc(_ sender: UISwitch) {
        if sender.isOn{
            sstLabel.text = "6 %"
            sst = 0.06
        }
        else{
            sstLabel.text = "Free"
            sst = 0
        }
    }
    
    @IBAction func serviceSwitchFunc(_ sender: UISwitch) {
        if sender.isOn{
            servicefeeText.isEnabled = true
            servicefeeText.text = ""
        }
        else{
            servicefeeText.isEnabled = false
            servicefeeText.text = "-"
        }
    }
    @IBAction func countFunc(_ sender: UIButton) {
        if servicefeeSwitch.isOn == true, servicefeeText.text != "" {
            servicePercent = Double(servicefeeText.text!)!
            countFunc()
        }
        else if servicefeeSwitch.isOn == false {
            servicePercent = 0
            countFunc()
        }
        else{
            nilfunc()
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

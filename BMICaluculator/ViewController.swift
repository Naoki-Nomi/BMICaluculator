//
//  ViewController.swift
//  BMICaluculator
//
//  Created by Naoki Nomi on 2021/04/08.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heighttextfield: UITextField!
    
    @IBOutlet weak var weighttextfield: UITextField!
    
    @IBOutlet weak var BMIlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        heighttextfield.placeholder = "身長をcmで入力してください。"
        weighttextfield.placeholder = "体重をkgで入力してください。"
    }
    
    @IBAction func Buttonaction(_ sender: Any) {
        let doubleH = Double(heighttextfield.text!)
        let doubleW = Double(weighttextfield.text!)
        BMIlabel.text = calculation(height: doubleH!, weight: doubleW!)
    }
    
    func calculation(height: Double, weight: Double) -> String {
        let h = height / 100
        let w = weight
        var result = w / (h * h)
        result = floor(result * 10) / 10
        
        return result.description
    }
}


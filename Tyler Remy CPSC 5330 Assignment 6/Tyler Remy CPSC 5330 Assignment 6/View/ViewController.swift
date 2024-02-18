//
//  ViewController.swift
//  Tyler Remy CPSC 5330 Assignment 6
//
//  Created by user251942 on 2/15/24.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var inputLabel: UILabel!
    
    @IBOutlet weak var c1Label: UILabel!
    @IBOutlet weak var c2Label: UILabel!
    @IBOutlet weak var c3Label: UILabel!
    @IBOutlet weak var c4Label: UILabel!
    
    @IBOutlet weak var usdLabel: UITextField!
    
    var conversionLogic = ConversionLogic()
    var usd = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        c1Label.text = conversionLogic.getCurrency1()
        c2Label.text = conversionLogic.getCurrency2()
        c3Label.text = conversionLogic.getCurrency3()
        c4Label.text = conversionLogic.getCurrency4()
    }
    
    
    @IBAction func currency1Switch(_ sender: UISwitch) {
        conversionLogic.setSwitch1(sender.isOn)
    }
    
    @IBAction func currency2Switch(_ sender: UISwitch) {
        conversionLogic.setSwitch2(sender.isOn)
    }
    
    @IBAction func currency3Switch(_ sender: UISwitch) {
        conversionLogic.setSwitch3(sender.isOn)
    }
    
    @IBAction func currency4Switch(_ sender: UISwitch) {
        conversionLogic.setSwitch4(sender.isOn)
    }
    
    @IBAction func convertButton(_ sender: UIButton) {
        
        //Check if input is integer, if so, display conversions and if not, display error
        if conversionLogic.isValidInput(usdLabel.text!) {
            
            usd = "USD Amount: $\(conversionLogic.getDollarAmount(usdLabel.text!))"
            //c1 = conversionLogic.getCurrency1Amount()
            
            self.performSegue(withIdentifier: "toResults", sender: self)
            
            inputLabel.text = "Enter USD:"
            inputLabel.textColor = UIColor.black
            inputLabel.font = UIFont.systemFont(ofSize: 17)
            inputLabel.backgroundColor = UIColor.clear
        } else {
            inputLabel.text = "Error: Enter Valid Integer"
            inputLabel.textColor = UIColor.red
            inputLabel.font = UIFont.boldSystemFont(ofSize: 20)
            inputLabel.backgroundColor = UIColor.white
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toResults" {
            let navigation = segue.destination as! ConversionResults
            navigation.usd = usd
            navigation.c1Name = conversionLogic.getCurrency1()
            navigation.c2Name = conversionLogic.getCurrency2()
            navigation.c3Name = conversionLogic.getCurrency3()
            navigation.c4Name = conversionLogic.getCurrency4()
            
            navigation.c1Amnt = conversionLogic.getCurrency1Amount()
            navigation.c2Amnt = conversionLogic.getCurrency2Amount()
            navigation.c3Amnt = conversionLogic.getCurrency3Amount()
            navigation.c4Amnt = conversionLogic.getCurrency4Amount()
        
        }
    }
    
    
}

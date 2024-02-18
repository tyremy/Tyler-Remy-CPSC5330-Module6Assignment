//
//  ConversionResults.swift
//  Tyler Remy CPSC 5330 Assignment 6
//
//  Created by user251942 on 2/18/24.
//

import UIKit

class ConversionResults: UIViewController {

    @IBOutlet weak var usdAmount: UILabel!
    @IBOutlet weak var c1Label: UILabel!
    @IBOutlet weak var c1Amount: UILabel!
    @IBOutlet weak var c2Label: UILabel!
    @IBOutlet weak var c2Amount: UILabel!
    @IBOutlet weak var c3Label: UILabel!
    @IBOutlet weak var c3Amount: UILabel!
    @IBOutlet weak var c4Label: UILabel!
    @IBOutlet weak var c4Amount: UILabel!
    
    var usd = ""
    
    var c1Name = ""
    var c2Name = ""
    var c3Name = ""
    var c4Name = ""
    
    var c1Amnt = ""
    var c2Amnt = ""
    var c3Amnt = ""
    var c4Amnt = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usdAmount.text = usd
        c1Label.text = c1Name
        c2Label.text = c2Name
        c3Label.text = c3Name
        c4Label.text = c4Name
        
        c1Amount.text = c1Amnt
        c2Amount.text = c2Amnt
        c3Amount.text = c3Amnt
        c4Amount.text = c4Amnt
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true)
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

//
//  ConversionLogic.swift
//  Tyler Remy CPSC 5330 Assignment 6
//
//  Created by user251942 on 2/18/24.
//

import Foundation

struct ConversionLogic {
    
    var c1Name = "Pounds"
    var c2Name = "Canadian Dollars"
    var c3Name = "Euros"
    var c4Name = "Swiss Franc"
    
    var c1 = true
    var c2 = true
    var c3 = true
    var c4 = true
    var usdAmount : Int = 0
    
    
    mutating func setSwitch1(_ switchValue: Bool) {
        if switchValue {
            c1 = true
        } else {
            c1 = false
        }
    }
    
    mutating func setSwitch2(_ switchValue: Bool) {
        if switchValue {
            c2 = true
        } else {
            c2 = false
        }
    }
    
    
    mutating func setSwitch3(_ switchValue: Bool) {
        if switchValue {
            c3 = true
        } else {
            c3 = false
        }
    }
    
    mutating func setSwitch4(_ switchValue: Bool) {
        if switchValue {
            c4 = true
        } else {
            c4 = false
        }
    }
    
    mutating func getDollarAmount(_ input: String) -> Int {
        if isValidInput(input) {
            usdAmount = Int(input)!
            return Int(input)!
        } else {
            return 0
        }
    }
    
    mutating func isValidInput(_ input: String) -> Bool {
        return Int(input) != nil
    }
    
    func getCurrency1() -> String {
        if c1 {
            return c1Name
        } else {
            return ""
        }
    }
    
    func getCurrency2() -> String {
        if c2 {
            return c2Name
        } else {
            return ""
        }
    }
    
    func getCurrency3() -> String {
        if c3 {
            return c3Name
        } else {
            return ""
        }
    }
    
    func getCurrency4() -> String {
        if c4 {
            return c4Name
        } else {
            return ""
        }
    }
    
    mutating func getCurrency1Amount() -> String {
        if c1 {
            return String(round((Double(usdAmount) * 0.793741)*100)/100.0)
        } else {
            return ""
        }
    }
    
    mutating func getCurrency2Amount() -> String {
        if c2 {
            return String(round((Double(usdAmount) * 1.34848)*100)/100.0)
        } else {
            return ""
        }
    }
    
    mutating func getCurrency3Amount() -> String {
        if c3 {
            return String(round((Double(usdAmount) * 0.928176)*100)/100.0)
        } else {
            return ""
        }
    }
    
    mutating func getCurrency4Amount() -> String {
        if c4 {
            return String(round((Double(usdAmount) * 0.880837)*100)/100.0)
        } else {
            return ""
        }
    }
    
    
}

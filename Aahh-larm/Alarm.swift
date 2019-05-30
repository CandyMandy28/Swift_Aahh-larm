//
//  Alarm.swift
//  Aahh-larm
//
//  Created by Codagami on 5/24/19.
//  Copyright © 2019 Codagami. All rights reserved.
//

import UIKit
import os.log

class Alarm {
    // MARK: Properties
    var inputTime : String
    var isOn : Bool
    var repeats : Bool
    var days : [Bool]
    var time : String
    
    struct PropertyKey {
        static let time = "time"
        static let isOn = "isOn"
        static let repeats = "repeats"
        static let days = "days"
    }
    
    // MARK: Initialization
    init(time: String, repeats: Bool, days: [Bool]) {
        self.inputTime = time
        self.repeats = repeats
        self.days = days
        self.time = inputTime
        self.isOn = true
    }
    
    func turnOff() {
        isOn = false
    }
    
    // MARK: Encoding
    func encode(with aCoder: NSCoder) {
        aCoder.encode(time, forKey: PropertyKey.time)
        aCoder.encode(repeats, forKey: PropertyKey.repeats)
        var listDays = ",,,,,"
        for (index, day) in days.enumerated() {
            if day {
                if index > 0 && index < 6 {
                    listDays += ","
                }
                
                switch (index) {
                case 0:
                    listDays += "Sun"
                case 1:
                    listDays += "Mon"
                case 2:
                    listDays += "Tues"
                case 3:
                    listDays += "Wed"
                case 4:
                    listDays += "Thur"
                case 5:
                    listDays += "Fri"
                default:
                    listDays += "Sat"
                }
            }
        }
        
        if listDays.last! == "," {
            listDays.removeLast()
        }
        
        aCoder.encode(listDays, forKey: PropertyKey.days)
    }
}

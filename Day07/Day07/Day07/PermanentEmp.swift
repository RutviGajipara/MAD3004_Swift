//
//  PermanentEmp.swift
//  Day07
//
//  Created by MacStudent on 2018-07-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class PermanentEmp : Employee, INetPay
{
    var weeks : Int?
    
    //get only computed property
    var netPay : Double?
    {
        get{
            if self.weeks! > 3
            {
                return self.basicPay! - 100
            }
            else
            {
                return self.basicPay!
            }
        }
    }
    
    override init() {
        self.weeks = 0
//        self.netPay = 0.0
        super.init()
    }
    //required initializer due to protocol
    required init(empID: Int, empName: String, basicPay: Double, weeks : Int) {
        self.weeks = weeks
        super.init(empID: empID, empName: empName, basicPay: basicPay)
    }
    
    override func display() {
        super.display()
        print("weeks : \(self.weeks ?? 0)")
        print("Net Pay : \(self.netPay?.asCurrency ?? self.basicPay?.asCurrency ?? 0.0.asCurrency)")
    }
}

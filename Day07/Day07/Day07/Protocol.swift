//
//  Protocol.swift
//  Day07
//
//  Created by MacStudent on 2018-07-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
protocol IDisplay {
    func display()
}


protocol INetPay {
    var netPay : Double? {get}
    init(empID : Int,empName : String, basicPay : Double, weeks : Int)
}

//
//  RequestLimitIncrease.swift
//  Day08
//
//  Created by MacStudent on 2018-07-25.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class RequestLimitIncrease
{
    var accInfo = [
        "S1100" : AcInfo(type: "Saving",balance: 2313.56),
        "S1200" : AcInfo(type: "Saving",balance: 3456.78),
        "S1300" : AcInfo(type: "Cheqing",balance: 4578.23),
        "S1400" : AcInfo(type: "Saving",balance: 8984.65)
        ]
    func processRequest(accountNo: String) throws
    {
        guard let accNo = accInfo[accountNo]
            else
        {
            throw LimitIncreaseErrors.ineligible
        }
        guard accNo.type == "saving"
            else{
                throw LimitIncreaseErrors.NoSavingAc
        }
        guard accNo.balance > 5000
        else
        {
            throw LimitIncreaseErrors.InsufficientBalance
        }
        print("Congrats...! Your credit limit is increased.")
    }
}

struct AcInfo {
    var type : String
    var balance : Double
}
enum LimitIncreaseErrors : Error {
    case ineligible
    case NoSavingAc
    case InsufficientBalance
}

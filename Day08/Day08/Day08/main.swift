//
//  main.swift
//  Day08
//
//  Created by MacStudent on 2018-07-25.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")
var request1 = RequestLimitIncrease()
do{
try request1.processRequest(accountNo: "S1100")
}
catch LimitIncreaseErrors.ineligible{
    print("You don't have account with our bank.")
}
catch LimitIncreaseErrors.NoSavingAc
{
    print("Credit card limit can only be increase if you have Saving Account")
}
catch LimitIncreaseErrors.InsufficientBalance
{
    print("You need minimum $5000 balance in your savingn account to be eligible for credit limit increase.")
}
catch
{
    print("Service disrupted...sorry for inconvenience.")
}
//Static
var s1 = Student()
s1.name = "Rutvi"
//Student.acNo = 987
s1.display()
var s2 = Student()
s2.name = "Jasmeet"
s2.display()

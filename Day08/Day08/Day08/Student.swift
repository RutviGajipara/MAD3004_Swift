//
//  Student.swift
//  Day08
//
//  Created by MacStudent on 2018-07-25.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
//final class Student
//private class Student
class Student
{
    var name: String?
    private static var acNo : Int?
    
    init()
    {
        self.name = "Unknown"
        Student.acNo = 123456
    }
    func display()
    {
        print("Student Name : \(self.name ?? "Unknown")")
        print("Account Number : \(Student.acNo ?? 0)")
    }
    static func getAccNo() -> Int
    {
        return acNo!
    }
}


class partTime : Student
{
    var hours : Int?
    override init()
    {
        self.hours = 10
        super.init()
    }
    override func display() {
        print("Hours : \(self.hours ?? 10)")
    }
}

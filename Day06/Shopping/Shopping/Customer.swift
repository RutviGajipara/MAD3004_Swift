//
//  Customer.swift
//  Shopping
//
//  Created by Jigisha Patel on 2018-07-19.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

class Customer{
    private var customerID : Int?
    private var customerName : String?
    private var address : String?
    private var email : String?
    private var creditCardInfo : String?
    private var shippingInfo : String?
    
    //default initializer
    init(){
        self.customerID = 0
        self.customerName = ""
        self.address = ""
        self.email = ""
        self.creditCardInfo = ""
        self.shippingInfo = ""
    }
    
    //parameterized initializer
    init(customerID: Int, customerName: String, address: String, email: String, creditCardInfo: String, shippingInfo: String){
        
        self.customerID = customerID
        self.customerName = customerName
        self.address = address
        self.email = email
        self.creditCardInfo = creditCardInfo
        self.shippingInfo = shippingInfo
    }
    
    //stored property
    var CustomerID : Int? {
        get{ return self.customerID}
        set{ self.customerID = newValue}
    }
    var CustomerName : String?{
        get{return self.customerName}
        set{self.customerName = newValue}
    }
    var Address : String?{
        get{return self.address}
        set{self.address = newValue}
    }
    var Email : String?{
        get{return self.email}
        set{self.email = newValue}
    }
    var CreditCardInfo : String?{
        get{return self.creditCardInfo}
        set{self.creditCardInfo = newValue}
    }
    var ShippingInfo : String?{
        get{return self.shippingInfo}
        set{self.shippingInfo = newValue}
    }
    
    func displayData() -> String{
        var returnData = ""
        
        if self.customerID != nil {
            returnData += "\n Customer ID : \(self.customerID ?? 0)"
        }
        
        if self.customerName != nil {
            returnData += "\n Customer Name : \(self.customerName ?? "Unknown")"
        }
        if self.address != nil {
            returnData += "\n Customer address : \(self.address ?? "Unknown")"
        }
        if self.email != nil {
            returnData += "\n Customer Email : \(self.email ?? "email@mad.com")"
        }
        if self.creditCardInfo != nil {
            returnData += "\n Customer Credit Card Info : \(self.creditCardInfo ?? "4520-0100-0000-0000")"
        }
        if self.shippingInfo != nil {
            returnData += "\n Customer Shipping Info : \(self.shippingInfo ?? "Shipping Instruction")"
        }
        return returnData
    }
    
    func registerUser(){
        print("Enter Customer ID : ")
        self.customerID = (Int)(readLine()!)
        print("Enter Customer Name : ")
        self.customerName = readLine()!
        print("Enter Customer Address : ")
        self.address = readLine()!
        print("Enter Customer Email : ")
        self.email = readLine()!
        print("Enter Customer CreditCardInfo : ")
        self.creditCardInfo = readLine()!
        print("Enter Customer Shipping Info : ")
        self.shippingInfo = readLine()!
        
    }
}














//
//  main.swift
//  Shopping
//
//  Created by MacStudent on 2018-07-20.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

import Foundation

print("Hello, World!")

//var tejas = Customer()
//
//print(tejas.displayData())
//
//var jatinder = Customer(customerID: 101, customerName: "Jatinder", address: "Attmar Dr. Brampton", email: "Jatinder@mad.com", creditCardInfo: "4520-0100-1234-5678", shippingInfo: "Ship at lambton college between 1PM to 5PM")
//print("\(jatinder.displayData())")
//
//tejas.CustomerID = 102
//tejas.CustomerName = "Tejas"
//tejas.Address = "Oshawa"
//tejas.Email = "Tejas@mad.com"
//tejas.CreditCardInfo = "4520-0100-9876-7865"
//tejas.ShippingInfo = "Don't Deliver between 1PM to 5PM"
//print(tejas.displayData())
//
//var navdeep = Customer()
//navdeep.registerUser()
//print(navdeep.displayData())

var Epson = Product(productID: 101, productName: "Pojector", productManufecturer: "Epson", unitPrice: 799.90, category: ProductCategory.Appliances)
print(Epson.displayData())

 var HandCream = Product()
HandCream.newProduct()

print(HandCream.displayData())

var dataHelper = DataHelper()
dataHelper.displayProducts()

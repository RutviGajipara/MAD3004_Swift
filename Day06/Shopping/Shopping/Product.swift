//
//  Product.swift
//  Shopping
//
//  Created by MacStudent on 2018-07-20.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation
class Product : IDisplay {
    func displayData() -> String
    {
        var returnData = ""
         returnData += "\n ProductId : \(self.productID ?? 0)"
         returnData += "\n Product Name : \(self.productName ?? "")"
         returnData += "\n Manufecturer : \(self.productManufecturer ?? "")"
        returnData += "\n Category : \(self.category ?? ProductCategory.None)"
         returnData += "\n Unit Price : \(self.unitPrice ?? 0.0)"
        return returnData
    }
    
    var productID : Int?
    var productName : String?
    var productManufecturer : String?
    var unitPrice : Double?
    var category : ProductCategory?
    
    var ProductID : Int?
    {
        get{ return self.ProductID}
        set{ self.productID = newValue}
    }
    var ProductName : String?
    {
        get{ return self.ProductName}
        set{ self.productName = newValue}
    }
    var ProductManufecturer : String?
    {
        get{ return self.ProductManufecturer}
        set{ self.productManufecturer = newValue}
    }
    var UnitPrice : Double?
    {
        get{ return self.UnitPrice}
        set{ self.unitPrice = newValue}
    }
    var Category : ProductCategory?
    {
        get{ return self.Category}
        set{ self.category = newValue}
    }
    init()
    {
        self.productID = 0
        self.productName = ""
        self.productManufecturer = ""
        self.unitPrice = 0.0
        self.category = ProductCategory.None
    }
    init(productID : Int, productName : String,productManufecturer : String, unitPrice : Double, category : ProductCategory)
    {
        self.productID = productID
        self.productName = productName
        self.productManufecturer = productManufecturer
        self.unitPrice = unitPrice
        self.category = category
    }
    

    func newProduct()
    {
        print("Enter Product ID : ")
        self.productID = (Int)(readLine()!)
        print("Enter Product Name : ")
        self.productName = (String)(readLine()!)
        print("Enter Product Manufecturer : ")
        self.productManufecturer = (String)(readLine()!)
        print("Please choose from the following product categories")
        for category in ProductCategory.allCases
        {
            print("Enter \(category.rawValue) for \(category)")
        }
        let choice = (Int)(readLine()!) ?? 5
        self.category = ProductCategory(rawValue: choice)
        print("Enter Unit Price : ")
        self.unitPrice = (Double)(readLine()!)
        }
}

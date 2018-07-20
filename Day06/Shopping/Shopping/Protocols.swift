//
//  Protocols.swift
//  Shopping
//
//  Created by MacStudent on 2018-07-20.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation
//protocol or interface
protocol IDisplay {
    func displayData() -> String
}
public protocol CaseIterable {
    
    associatedtype AllCases: Collection where AllCases.Element == Self
    
    static var allCases: AllCases { get }
    
}

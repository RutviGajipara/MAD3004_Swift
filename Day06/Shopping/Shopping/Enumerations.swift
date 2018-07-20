//
//  Enumerations.swift
//  Shopping
//
//  Created by MacStudent on 2018-07-20.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
enum ProductCategory : Int, CaseIterable
{
    case Clothing = 1
    case Health = 2
    case Books = 3
    case Appliances = 4
    case None = 5
}

extension CaseIterable where Self: Hashable {
    
    static var allCases: [Self] {
        
        return [Self](AnySequence { () -> AnyIterator<Self> in
            
            var raw = 0
            
            var first: Self?
            
            return AnyIterator {
                
                let current = withUnsafeBytes(of: &raw) { $0.load(as: Self.self) }
                
                if raw == 0 {
                    
                    first = current
                    
                } else if current == first {
                    
                    return nil
                    
                }
                
                raw += 1
                
                return current
                
            }
            
        })
        
    }
    
}

//
//   Utils.swift
//  CurrencyProject
//
//  Created by Aravinth on 12/10/22.
//

import Foundation

import Foundation
extension String {
    static let numberFormatter = NumberFormatter()
    var doubleValue: Double {
        String.numberFormatter.decimalSeparator = "."
        if let result = String.numberFormatter.number(from: self) {
            return result.doubleValue
        } else {
            String.numberFormatter.decimalSeparator=","
            if let result = String.numberFormatter.number (from: self) {
                return result.doubleValue
                
            }
        }
        return 0
    }
}


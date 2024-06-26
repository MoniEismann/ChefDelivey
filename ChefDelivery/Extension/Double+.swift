//
//  Double+.swift
//  ChefDelivery
//
//  Created by Igor fe Castro Figueiredo on 21/06/24.
//

import Foundation

extension Double{
    func formatPrice() -> String{
        let formattedString = String(format:"%.2f", self)
        return formattedString.replacingOccurrences(of: ".", with: ",")
    }
}

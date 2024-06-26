//
//  StoreType.swift
//  ChefDelivery
//
//  Created by Igor fe Castro Figueiredo on 21/06/24.
//

import Foundation

struct StoreType: Identifiable {
    let id: Int
    let name: String
    let distance: Double
    let logoImage: String
    let headerImage: String
    let location: String
    let stars: Int
    let products: [ProductType]
}

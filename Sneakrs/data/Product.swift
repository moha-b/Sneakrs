//
//  Product.swift
//  Sneakrs
//
//  Created by Mohab Khalid on 18/09/2025.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let brand: String
    let brandImage: String
    let price: Double
    let description: String
    let thumbnail: String
    let images: [String]
    let colors: [String]
    let sizes: [Int]
}

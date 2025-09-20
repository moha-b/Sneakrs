//
//  Product.swift
//  Sneakrs
//
//  Created by Mohab Khalid on 18/09/2025.
//

import Foundation
import SwiftUICore

class Products {
    var list: [Product] = []
    
    init() {
        loadProducts()
    }
    
    func loadProducts() {
        if let url = Bundle.main.url(forResource: "products", withExtension: "json") {
            do{
                let data = try Data(contentsOf: url)
                let products = try JSONDecoder().decode([Product].self, from: data)
                list = products
            } catch {
                fatalError("Failed to load products.json: \(error)")
            }
        }
    }
    
    static func colorFromString(_ colorName: String) -> Color {
        switch colorName.lowercased() {
        case "black", "core black":
            return Color.black
        case "white", "cloud white":
            return Color.white
        case "red":
            return Color.red
        case "solar yellow":
            return Color.yellow
        case "gray":
            return Color.gray
        case "blue", "royal blue":
            return Color.blue
        case "pink":
            return Color.pink
        case "navy":
            return Color(red: 0, green: 0, blue: 0.5)
        case "burgundy":
            return Color(red: 0.5, green: 0, blue: 0.13)
        case "beige":
            return Color(red: 0.96, green: 0.96, blue: 0.86)
        case "mint green":
            return Color(red: 0.6, green: 1.0, blue: 0.6)
        case "black/red":
            return Color.black
        case "white/gray":
            return Color(red: 0.9, green: 0.9, blue: 0.9)
        case "white/black":
            return Color.white
        case "sail/green":
            return Color(red: 0.98, green: 0.96, blue: 0.91)
        case "white/gold":
            return Color(red: 1.0, green: 0.84, blue: 0.0)
        default:
            return Color.gray
        }
    }
}

//
//  Product.swift
//  Sneakrs
//
//  Created by Mohab Khalid on 18/09/2025.
//

import Foundation

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
}

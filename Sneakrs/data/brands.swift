//
//  brand.swift
//  Sneakrs
//
//  Created by Mohab Khalid on 19/09/2025.
//

import Foundation

class Brands {
    var list: [Brand] = []
    
    init() {
        loadBrands()
    }
    
    func loadBrands() {
        if let url = Bundle.main.url(forResource: "brands", withExtension: "json") {
            do{
                let data = try Data(contentsOf: url)
                let products = try JSONDecoder().decode(
                    [Brand].self,
                    from: data
                )
                list = products
            } catch {
                fatalError("Failed to load products.json: \(error)")
            }
        }
    }
}

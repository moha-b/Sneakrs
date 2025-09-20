//
//  ItemCard.swift
//  Sneakrs
//
//  Created by Mohab Khalid on 19/09/2025.
//

import SwiftUI

struct ItemCard: View {
    let product: Product
    var body: some View {
        NavigationLink(destination: ProductDetails(product: product)) {
            VStack {
                ZStack(alignment: .bottomTrailing) {
                    Image(product.thumbnail)
                    Image(product.brandImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 47, height: 30)
                }
                .frame(width:142,height: 150)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                
                Text(product.name)
                    .font(.caption)
                    .lineLimit(1)
                    .foregroundColor(.black)
            }
        }
    }
}

#Preview {
    ItemCard(product: Products().list[0])
}

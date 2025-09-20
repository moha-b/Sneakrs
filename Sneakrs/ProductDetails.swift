//
//  ProductDetails.swift
//  Sneakrs
//
//  Created by Mohab Khalid on 19/09/2025.
//

import SwiftUI

struct ProductDetails: View {
    let product: Product
    @State private var selectedOption = "Choose size"
    @Environment(\.dismiss) private var dismiss
    @State private var currentIndex = 0
    var allImages: [String] {
        [product.brandImage] + product.images
    }
    
    
    var body: some View {
        VStack(alignment:.leading) {
            HStack {
                Image(systemName: "arrow.left")
                    .onTapGesture { dismiss() }
                Spacer()
                Image(systemName: "ellipsis")
            }.padding(.bottom)
            VStack{
                ZStack(){
                    Image(product.brandImage)
                        .resizable()
                        .scaledToFit()
                    TabView(selection: $currentIndex) {
                        ForEach(0..<product.images.count, id: \.self) { index in
                                Image(product.images[index])
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxWidth: 200, maxHeight: 200)
                            
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                }
                customPageIndicator.padding(.bottom)
            }
            .frame(height: 390)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(12)
            
            Text(product.name)
                .font(.title)
                .padding(.top)
            Text("$\(product.price , specifier: "%.2f")")
                .font(.title3)
                .padding(.bottom)
            Text(product.description)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            Spacer()
            HStack(spacing: 10) {
                HStack{
                    ForEach(product.colors, id: \.self) { color in
                        Circle()
                            .fill(Products.colorFromString(color))
                            .frame(width: 23, height: 23)
                    }
                }
                .frame(width: 100,height: 40)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                Spacer()
                Menu {
                    ForEach(product.sizes, id: \.self) { option in
                        Button("\(option)") {
                            selectedOption = "\(option)"
                        }
                    }
                } label: {
                    HStack {
                        Text(selectedOption.isEmpty ? "Choose size" : selectedOption)
                            .foregroundColor(selectedOption.isEmpty ? .secondary : .primary)
                        Image(systemName: "chevron.down")
                            .foregroundColor(.secondary)
                    }
                }
                .padding(.vertical,5)
                .padding(.horizontal, 10)
                .background(Color(.systemGray6))
                .cornerRadius(8)
            }.padding(.bottom,16)
            
            Button{} label: {
                Text("Add to bag")
            }
            .frame(maxWidth: .infinity)
            .frame(height: 53)
            .foregroundColor(.white)
            .font(.title3)
            .fontWeight(.semibold)
            .background(.black)
            .cornerRadius(15)
        }
        .padding()
        .navigationBarHidden(true)
    }
    
    var customPageIndicator: some View {
        HStack(spacing: 6) {
            ForEach(0..<product.images.count, id: \.self) { index in
                RoundedRectangle(cornerRadius: 4)
                    .fill(currentIndex == index ? Color.blue : Color.gray.opacity(0.3))
                    .frame(
                        width: currentIndex == index ? 24 : 8,
                        height: 8
                    )
                    .animation(.easeInOut(duration: 0.3), value: currentIndex)
            }
        }
    }
}

#Preview {
    ProductDetails(product: Products().list[1])
}

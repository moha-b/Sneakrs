//
//  ContentView.swift
//  Sneakrs
//
//  Created by Mohab Khalid on 18/09/2025.
//

import SwiftUI

struct ContentView: View {
    let products = Products()
    let brands = Brands()
    @State private var searchText = ""
    let columns = [
        GridItem(.adaptive(minimum: 150), spacing: 16)
    ]
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack() {
                    Text("Sneakrs").font(.title)
                    Spacer()
                    Image(systemName: "bell.fill")
                }
                
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    
                    TextField("Search...", text: $searchText)
                        .textFieldStyle(PlainTextFieldStyle())
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    if !searchText.isEmpty {
                        Button(action: { searchText = "" }) {
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(.gray)
                        }
                    }
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                Text("Brands").font(.title2).padding(.top,16)
                HStack {
                    Spacer()
                    ForEach(brands.list) { brand in
                        Image(brand.logo)
                            .scaledToFit()
                            .frame(width: 60, height: 50)
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                        Spacer()
                    }
                }
                Text("Popular").font(.title2).padding(.top,16)
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(products.list) { product in
                            ItemCard(product: product)
                        }
                    }
                }
            }.padding()
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    ContentView()
}

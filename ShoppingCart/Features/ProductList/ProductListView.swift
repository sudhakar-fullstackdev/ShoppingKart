//
//  ProductListView.swift
//  ShoppingCart
//
//  Created by Sathwik on 5/4/26.
//

import SwiftUI

struct ProductListView: View {
    @StateObject var productListViewModel: ProductListViewModel = ProductListViewModel()
    
    var body: some View {
        List(productListViewModel.products) { product in
            NavigationLink(value: Router.productDeatils(product)) {
                HStack(spacing: 16) {
                    AsyncImage(url: URL(string: product.thumbnail)) { phase in
                        switch phase {
                        case .empty:
                            ProgressView()
                        case .success(let image):
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        case .failure:
                            Image(systemName: "photo")
                                .foregroundColor(.secondary)
                        @unknown default:
                            EmptyView()
                        }
                    }
                    .frame(width: 70, height: 70)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text(product.title)
                            .font(.headline)
                            .lineLimit(1)
                        
                        Text(product.description)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .lineLimit(2)
                        
                        Text("$\(String(format: "%.2f", product.price))")
                            .font(.callout.bold())
                            .foregroundColor(.accentColor)
                            .padding(.top, 2)
                    }
                }
                .padding(.vertical, 4)
            }
        }
        .listStyle(.plain)
        .navigationDestination(for: Router.self) { routerPath in
            switch routerPath {
            case .productDeatils(let product):
                ProductDetailView(product: product)
            case .cart:
                CartView()
            }
        }
        .onAppear() {
            self.productListViewModel.getProducts()
        }
    }
}

#Preview {
    ProductListView()
}

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
                VStack(alignment: .leading, spacing: 20) {
                    Text(product.title)
                        .font(.headline)
                    Text(product.description)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
        }.navigationDestination(for: Router.self) { routerPath in
            switch routerPath {
            case .productDeatils(let product):
                ProductDetailView(product: product)
            case .cart:
                EmptyView()
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

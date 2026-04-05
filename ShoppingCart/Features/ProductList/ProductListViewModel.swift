//
//  ProductListViewModel.swift
//  ShoppingCart
//
//  Created by Sathwik on 5/4/26.
//


import Combine
import Foundation

class ProductListViewModel: ObservableObject {
    @Published var products: [Product] = []
    
    func getProducts() {
        products = MockGenerator.getMockProducts()
    }
}

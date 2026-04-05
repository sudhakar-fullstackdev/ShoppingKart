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
    @Published var isLoading = false

    let segment: ProductSegment
    
    init(segment: ProductSegment) {
        self.segment = segment
    }
    
    func getProducts() {
        isLoading = true
        products = MockGenerator.getMockProducts()
        isLoading = false
    }
}

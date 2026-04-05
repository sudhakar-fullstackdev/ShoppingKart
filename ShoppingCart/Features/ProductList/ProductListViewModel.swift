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
    
    @MainActor
    func getProducts() {
        let category: String
        switch segment {
        case .beauty:
            category = "beauty"
        case .Groceries:
            category = "groceries"
        case .furniture:
            category = "furniture"
        }
        
        guard let url = URL(string: "https://dummyjson.com/products/category/\(category)") else {
            return
        }
        
        isLoading = true
        Task {
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                let decodedResponse = try JSONDecoder().decode(ProductResponse.self, from: data)
                self.products = decodedResponse.products
                self.isLoading = false
            } catch {
                print("Error fetching products (\(category)): \(error)")
                self.isLoading = false
            }
        }
    }
}


import Foundation
import Combine

struct Product: Codable, Identifiable, Hashable, Equatable {
    let id: Int
    let title: String
    let description: String
    let price: Double
    let category: String
    let thumbnail: String
    let images: [String]
}

struct ProductResponse: Codable {
    let products: [Product]
    let total: Int
    let skip: Int
    let limit: Int
}


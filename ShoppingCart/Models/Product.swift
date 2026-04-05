
import Foundation
import Combine

struct Product: Decodable, Identifiable, Hashable, Equatable {
    let id: UUID = UUID()
    let title: String
    let description: String
    let price: Double
    let category: String
    let thumbnail: String
    let images: [String]
}


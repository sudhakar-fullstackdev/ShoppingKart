//
//  Router.swift
//  ShoppingCart
//
//  Created by Sathwik on 5/4/26.
//

import Foundation

enum Router: Hashable, Equatable {
    case productDeatils(Product)
    case cart
}

enum ProductSegment: Hashable, Equatable {
    case beauty
    case Groceries
    case furniture
}

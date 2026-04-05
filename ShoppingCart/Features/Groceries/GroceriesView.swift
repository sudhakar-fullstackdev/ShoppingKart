//
//  GroceriesView.swift
//  ShoppingCart
//
//  Created by Sathwik on 5/4/26.
//

import SwiftUI

struct GroceriesView: View {
    @State var groceriesNavPath: NavigationPath = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $groceriesNavPath) {
            ProductListView(segment: .Groceries)
                .navigationTitle("Groceries")
        }
    }
}

#Preview {
    GroceriesView()
}

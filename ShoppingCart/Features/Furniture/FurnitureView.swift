//
//  FurnitureView.swift
//  ShoppingCart
//
//  Created by Sathwik on 5/4/26.
//

import SwiftUI

struct FurnitureView: View {
    @State var furnitureNavPath: NavigationPath = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $furnitureNavPath) {
            ProductListView(segment: .furniture)
                .navigationTitle("Furniture")
        }
    }
}

#Preview {
    FurnitureView()
}

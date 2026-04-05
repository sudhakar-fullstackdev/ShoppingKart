//
//  BeautyProdView.swift
//  ShoppingCart
//
//  Created by Sathwik on 5/4/26.
//

import SwiftUI

struct BeautyProductsView: View {
    @State var beautyNavPath: NavigationPath = NavigationPath()
    @StateObject var productsViewModel: ProductListViewModel = ProductListViewModel()
    
    var body: some View {
        NavigationStack(path: $beautyNavPath) {
            VStack() {
                Text("Beauty Products")
                ProductListView()
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.green)
        }
    }
}

#Preview {
    BeautyProductsView()
}

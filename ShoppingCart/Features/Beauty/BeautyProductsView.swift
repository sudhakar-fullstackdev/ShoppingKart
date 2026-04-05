//
//  BeautyProdView.swift
//  ShoppingCart
//
//  Created by Sathwik on 5/4/26.
//

import SwiftUI

struct BeautyProductsView: View {
    @State var beautyNavPath: NavigationPath = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $beautyNavPath) {
            ProductListView()
                .navigationTitle("Beauty Products")
        }
    }
}

#Preview {
    BeautyProductsView()
}

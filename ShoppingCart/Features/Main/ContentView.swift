//
//  ContentView.swift
//  ShoppingCart
//
//  Created by Sathwik on 5/4/26.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Int = 0
    
    var body: some View {
        TabView(selection: $selection) {
            BeautyProductsView().tabItem {
                Label("Beauty", systemImage: "eyebrow")
            }.tag(0)
            GroceriesView().tabItem {
                Label("Groceries", systemImage: "tree.fill")
            }.tag(1)
            FurnitureView().tabItem {
                Label("Furniture", systemImage: "table.furniture")
            }.tag(2)
        }
    }
}

#Preview {
    ContentView()
}

//
//  Shop.swift
//  Touchdown
//
//  Created by Todd James on 7/14/22.
//

import Foundation

class Shop: ObservableObject {
  @Published var showingProduct: Bool = false
  @Published var selectedProduct: Product? = nil
}

// Like React Context, object available globally, @Published watches for changes on vars and rerenders if changed
// added globally to the TouchdownApp w/ .environmentObject(Shop())

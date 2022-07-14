//
//  ContentView.swift
//  Touchdown
//
//  Created by Todd James on 7/10/22.
//

import SwiftUI

struct ContentView: View {
  // MARK: - PROPERTIES
  @Environment(\.safeAreaInsets) private var safeAreaInsets
  @EnvironmentObject var shop: Shop
  
  // MARK: - BODY

  var body: some View {
    ZStack {
      if shop.showingProduct == false && shop.selectedProduct == nil {
        VStack(spacing: 0) {
          NavigationBarView()
            .padding(.horizontal, 15)
            .padding(.bottom)
            .padding(.top, safeAreaInsets.top) // UIApplication extension
            //.padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top) // takes care of the notch - depricated
            .background(Color.white)
            .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)

          ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 0) {

              FeaturedTabView()
                .padding(.vertical)
                .frame(height: UIScreen.main.bounds.width / 1.475) // Fixes the TabView from being shrunk down
                // Another option is
                // .frame(minHeight: 256)
                // .padding(.vertical, 10)

              CategoryGridView()

              TitleView(title: "Helmets")

              LazyVGrid(columns: gridLayout, spacing: 15) {
                ForEach(products) { product in
                  ProductItemView(product: product)
                    .onTapGesture {
                      feedback.impactOccurred() // haptics
                      
                      withAnimation(.easeOut) {
                        shop.selectedProduct = product  // selects product
                        shop.showingProduct = true
                      }
                    }
                } //: LOOP
              } //: LAZYVGRID
              .padding(15)
              
              TitleView(title: "Brands")
              BrandGridView()

              FooterView()
                .padding(.horizontal)
            } //: VSTACK
          } //: SCROLLVIEW
        } //: VSTACK
        .background(colorBackground.ignoresSafeArea(.all, edges: .all))
      } else {
        ProductDetailView()
      }
    } //: ZSTACK
    .ignoresSafeArea(.all, edges: .top) // ZStack is the main content container
  } //: BODY
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewDevice("iPhone 12 Pro Max")
      .environmentObject(Shop())  // needed or preview crashes
  }
}

//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Todd James on 7/13/22.
//

import SwiftUI

struct ProductDetailView: View {
  @Environment(\.safeAreaInsets) private var safeAreaInsets
  @EnvironmentObject var shop: Shop
  
  var body: some View {
    VStack(alignment: .leading, spacing: 5, content: {
      // NAVBAR
      NavigationVarDetailView()
        .padding(.horizontal)
        .padding(.top, safeAreaInsets.top)
      
      // HEADER
      HeaderDetailView()
        .padding(.horizontal)
      
      // DETAIL TOP PART
      TopPartDetailView()
        .padding(.horizontal)
        .zIndex(1) // raises image above custom shape
      
      // DETAIL BOTTOM PART
      VStack(alignment: .center, spacing: 0, content: {
        // RATINGS + SIZES
        RatingsSizesDetailView()
          .padding(.top, -20)
          .padding(.bottom, 10)
        
        // DESCRIPTION
        ScrollView(.vertical, showsIndicators: false) {
          Text(shop.selectedProduct?.description ?? sampleProduct.description) // replaces with default data if selectedProduct is nil
            .font(.system(.body, design: .rounded))
            .foregroundColor(.gray)
            .multilineTextAlignment(.leading)
        }
        
        // QUANTITY + FAVORITE
        QuantityFavoriteDetailView()
          .padding(.vertical, 10)
        
        // ADD TO CART
        AddToCartDetailView()
          .padding(.bottom, 20)
      }) //: VSTACK
      .zIndex(0)
      .padding(.horizontal)
      .background(
        Color.white
          .clipShape(CustomShape())
          .padding(.top, -105)
      )
      
      
    })
    .ignoresSafeArea(.all, edges: .all)
    .background(
      Color(
        red: shop.selectedProduct?.red ?? sampleProduct.red,
        green: shop.selectedProduct?.green ?? sampleProduct.green,
        blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
      .ignoresSafeArea(.all, edges: .all)
    )
  }
}

struct ProductDetailView_Previews: PreviewProvider {
  static var previews: some View {
    ProductDetailView()
      .previewDevice("iPhone 11")
      .previewLayout(.fixed(width: 375, height: 812 ))
      .environmentObject(Shop())
  }
}

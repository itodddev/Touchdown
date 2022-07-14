//
//  NavigationVarDetailView.swift
//  Touchdown
//
//  Created by Todd James on 7/13/22.
//

import SwiftUI

struct NavigationVarDetailView: View {
  
  @EnvironmentObject var shop: Shop
  
  var body: some View {
    HStack {
      Button(action: {
        feedback.impactOccurred() // haptics
        
        withAnimation(.easeIn) {
          shop.selectedProduct = nil
          shop.showingProduct = false
        }
      }, label: {
        Image(systemName: "chevron.left")
          .font(.title)
          .foregroundColor(.white)
      })
      
      Spacer()
      
      Button(action: {}, label: {
        Image(systemName: "cart")
          .font(.title)
          .foregroundColor(.white)
        
      })
    }
  }
}

struct NavigationVarDetailView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationVarDetailView()
      .previewDevice("iPhone 13 Pro Max")
      .previewLayout(.sizeThatFits)
      .padding()
      .background(Color.gray)
      .environmentObject(Shop())
  }
}

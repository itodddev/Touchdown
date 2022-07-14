//
//  QuantityFavoriteDetailView.swift
//  Touchdown
//
//  Created by Todd James on 7/13/22.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
  
  @State private var counter: Int = 0
  
  var body: some View {
    HStack(alignment: .center, spacing: 6, content: {
      Button(action: {
        if counter > 0 {
          counter -= 1
          
          feedback.impactOccurred() // haptics
        }
      }, label: {
        Image(systemName: "minus.circle")
      })
      
      Text("\(counter)")
        .fontWeight(.semibold)
        .frame(minWidth: 36)
      
      Button(action: {
        if counter < 100 {
          counter += 1
          
          feedback.impactOccurred() // haptics
        }
      }, label: {
        Image(systemName: "plus.circle")
      })
      
      Spacer()
      
      
      Button(action: {
        feedback.impactOccurred() // haptics
      }, label: {
        Image(systemName: "heart.circle")
          .foregroundColor(.pink)
      })
    }) //: HSTACK
    .font(.system(.title, design: .rounded))
    .foregroundColor(.black)
    .imageScale(.large) // enlarges the image
  }
}

struct QuantityFavoriteDetailView_Previews: PreviewProvider {
  static var previews: some View {
    QuantityFavoriteDetailView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}

//
//  FooterView.swift
//  Touchdown
//
//  Created by Todd James on 7/10/22.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
      VStack(alignment: .center, spacing: 10) {
        Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
          .foregroundColor(.gray)
          .multilineTextAlignment(.center)
          .layoutPriority(2)
        
        Image("logo-lineal")
          .renderingMode(.template)  // renders all non-transparent colors as the foregraound color
          .foregroundColor(.gray)
          .layoutPriority(0)

        Text("Copyright © Todd James\nAll rights reserved.")
          .font(.footnote)
          .fontWeight(.bold)
          .foregroundColor(.gray)
          .multilineTextAlignment(.center)
          .layoutPriority(1)
          // Views typically have a default priority of 0 which causes space to be apportioned evenly to all sibling views. Raising a view’s layout priority encourages the higher priority view to shrink later when the group is shrunk and stretch sooner when the group is stretched.
      }
      .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
      FooterView()
        .previewDevice("iPhone 13 Pro Max")
        .previewLayout(.sizeThatFits)
        .background(colorBackground)
    }
}

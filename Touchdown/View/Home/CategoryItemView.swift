//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Todd James on 7/11/22.
//

import SwiftUI

struct CategoryItemView: View {
  // MARK: - PROPERTIES

  let category: Category

  // MARK: - BODY

    var body: some View {
      Button(action: {}, label: {
        HStack(alignment: .center, spacing: 6) {
          Image(category.image)
            .renderingMode(.template)
            .resizable()
            .scaledToFit()
            .frame(width: 30, height: 30, alignment: .center)
            .foregroundColor(.gray)

          Text(category.name.uppercased())
            .fontWeight(.light)
            .foregroundColor(.gray)
            .multilineTextAlignment(.leading)

        } //: HSTACK
        .frame(width: 160, height: 45, alignment: .leading)
        .padding()
        .background(Color.white.cornerRadius(12))
        .background(
          RoundedRectangle(cornerRadius: 12)
            .stroke(.gray, lineWidth: 1)
        )
      }) //: BUTTON
    }
}

// MARK: - PREVIEW

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
    }
}

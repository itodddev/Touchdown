//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Todd James on 7/11/22.
//

import SwiftUI

struct FeaturedTabView: View {
  // MARK: - PROPERTIES

  // MARK: - BODY

    var body: some View {
      TabView {
        ForEach(players) { player in
          FeaturedItemView(player: player)
            .padding(.top, 10)
            .padding(.horizontal, 15)
        }
      } //: TABVIEW
      .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    } //: BODY
}

// MARK: - PREVIEW

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
        .previewDevice("iPhone 12 Pro")
        .previewLayout(.sizeThatFits)
        .background(Color.gray)
    }
}

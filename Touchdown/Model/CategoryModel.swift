//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Todd James on 7/11/22.
//

import Foundation

struct Category: Codable, Identifiable {
  let id: Int
  let name: String
  let image: String
}

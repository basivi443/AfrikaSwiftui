//
//  AnimalModel.swift
//  AfrikaSwiftUI
//
//  Created by Basivi Reddy on 30/06/24.
//

import Foundation
import SwiftUI

struct Animal: Codable, Identifiable {
  let id: String
  let name: String
  let headline: String
  let description: String
  let link: String
  let image: String
  let gallery: [String]
  let fact: [String]
}

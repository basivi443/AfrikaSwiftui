//
//  AnimalDetailView.swift
//  AfrikaSwiftUI
//
//  Created by Basivi Reddy on 30/06/24.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: - PROPERTIES
    
    let animal: Animal
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

// MARK: - PREVIEW

struct AnimalDetailView_Previews: PreviewProvider {
  static let animals: [Animal] = Bundle.main.decode("animals.json")
  
  static var previews: some View {
    NavigationView {
      AnimalDetailView(animal: animals[0])
    }
    .previewDevice("iPhone 13")
  }
}

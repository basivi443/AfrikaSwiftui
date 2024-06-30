//
//  ContentView.swift
//  AfrikaSwiftUI
//
//  Created by Basivi Reddy on 25/06/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    var body: some View {
        NavigationView{
            Group{
                List {
                    CoverImageView()
                        .frame(height: 300)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    
                    ForEach(animals) { animal in
                        NavigationLink(destination: AnimalDetailView(animal: animal)) {
                            AnimalListItemView(animal: animal)
                        } //: LINK
                    } //: LOOP
                }
            }
            .navigationBarTitle("Africa", displayMode: .large)
            
        }
        
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewDevice("iPhone 13")
  }
}

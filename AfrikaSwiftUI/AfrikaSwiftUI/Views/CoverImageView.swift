//
//  CoverImageView.swift
//  AfrikaSwiftUI
//
//  Created by Basivi Reddy on 30/06/24.
//

import SwiftUI

struct CoverImageView: View {
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    var body: some View {
        TabView{
            ForEach(coverImages){ item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }
            
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
    }
}

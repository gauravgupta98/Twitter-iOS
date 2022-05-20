//
//  SearchBar.swift
//  Twitter
//
//  Created by Gaurav Gupta on 20/05/22.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            TextField("Search...", text: $text)
                .padding(9)
                .padding(.horizontal, 24)
                .background(Color(.systemGray6))
                .cornerRadius(9)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 9)
                    }
                )
        }
        .padding(.horizontal, 3)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
    }
}

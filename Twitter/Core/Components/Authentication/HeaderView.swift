//
//  AuthenticationHeaderView.swift
//  Twitter
//
//  Created by Gaurav Gupta on 05/05/22.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let caption: String
    
    var body: some View {
        // header view
        VStack(alignment: .leading) {
            HStack { Spacer() }

            Text(title)
                .font(.largeTitle)
                .fontWeight(.semibold)

            Text(caption)
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
        .frame(height: 270)
        .padding(.leading)
        .background(Color(.systemBlue))
        .foregroundColor(.white)
        .clipShape(RoundedShape(corners: [.bottomRight]))
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Hello", caption: "Welcome Back")
    }
}

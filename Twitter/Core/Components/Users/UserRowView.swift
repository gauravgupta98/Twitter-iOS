//
//  UserRowView.swift
//  Twitter
//
//  Created by Gaurav Gupta on 29/04/22.
//

import SwiftUI
import Kingfisher

struct UserRowView: View {
    @Environment(\.colorScheme) var colorScheme
    let user: User
    
    var body: some View {
        HStack(spacing: 12) {
            KFImage(URL(string: user.profileImageUrl))
                .resizable()
                .clipShape(Circle())
                .scaledToFill()
                .frame(width: 57, height: 57)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(user.username)
                    .font(.subheadline).bold()
                    .foregroundColor(colorScheme == .dark ? .white : .black)
                
                Text(user.fullname)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView(user: User(username: "tom",
                               fullname: "Tom from Cartoon",
                               profileImageUrl: "https://firebasestorage.googleapis.com:443/v0/b/twitter-ios-app.appspot.com/o/profile_image%2F4906DB01-7591-4D44-B9D0-09CCF3C11B86?alt=media&token=68714ded-4eff-4abb-a053-d4c069138232",
                               email: "Tom@gmail.com"))
    }
}

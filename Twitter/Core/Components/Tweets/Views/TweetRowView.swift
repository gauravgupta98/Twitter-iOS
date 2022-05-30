//
//  TweetRowView.swift
//  Twitter
//
//  Created by Gaurav Gupta on 28/04/22.
//

import SwiftUI
import Firebase
import Kingfisher

struct TweetRowView: View {
    @ObservedObject var viewModel: TweetRowViewModel
    
    init (tweet: Tweet) {
        self.viewModel = TweetRowViewModel(tweet: tweet)
    }
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                // profile image + user info + tweet
                HStack(alignment: .top, spacing: 12) {
                    if let user = viewModel.tweet.user {
                        KFImage(URL(string: user.profileImageUrl))
                            .resizable()
                            .scaledToFill()
                            .clipShape(Circle())
                            .frame(width: 51, height: 51)
                    }
                    
                    // user info and tweet caption
                    VStack(alignment: .leading, spacing: 4) {
                        // user info
                        if let user = viewModel.tweet.user {
                            HStack {
                                Text(user.fullname)
                                    .font(.subheadline).bold()
                                
                                Text("@\(user.username)")
                                    .foregroundColor(.gray)
                                    .font(.caption)
                                
                                Text("2w")
                                    .foregroundColor(.gray)
                                    .font(.caption)
                            }
                        }
                        
                        // tweet caption
                        Text(viewModel.tweet.caption)
                            .font(.subheadline)
                            .multilineTextAlignment(.leading)
                    }
                }
                
                // action buttons
                HStack {
                    Button {
                        
                    } label: {
                        Image(systemName: "bubble.left")
                            .font(.subheadline)
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "arrow.2.squarepath")
                            .font(.subheadline)
                    }
                    
                    Spacer()
                    
                    Button {
                        viewModel.likeTweet()
                    } label: {
                        Image(systemName: viewModel.tweet.didLike ?? false ? "heart.fill" : "heart")
                            .font(.subheadline)
                            .foregroundColor(viewModel.tweet.didLike ?? false ? .red : .gray)
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "bookmark")
                            .font(.subheadline)
                    }
                }
                .padding(EdgeInsets(top: 6, leading: 12, bottom: 0, trailing: 12))
                .foregroundColor(.gray)
            }
            .padding(EdgeInsets(top: 6, leading: 15, bottom: 6, trailing: 15))
            
            Divider()
        }
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView(tweet: Tweet(caption: "", timestamp: Timestamp(date: Date()), uid: "test", likes: 0))
    }
}

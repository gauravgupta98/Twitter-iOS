//
//  TweetRowView.swift
//  Twitter
//
//  Created by Gaurav Gupta on 28/04/22.
//

import SwiftUI
import Firebase

struct TweetRowView: View {
    let tweet: Tweet
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                // profile image + user info + tweet
                HStack(alignment: .top, spacing: 12) {
                    Circle()
                        .frame(width: 51, height: 51)
                        .foregroundColor(Color(.systemBlue))
                    
                    // user info and tweet caption
                    VStack(alignment: .leading, spacing: 4) {
                        // user info
                        HStack {
                            Text("Bruce Wayne")
                                .font(.subheadline).bold()
                            
                            Text("@batman")
                                .foregroundColor(.gray)
                                .font(.caption)
                            
                            Text("2w")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        
                        // tweet caption
                        Text(tweet.caption)
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
                        
                    } label: {
                        Image(systemName: "heart")
                            .font(.subheadline)
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

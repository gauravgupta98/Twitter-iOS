//
//  TweetRowViewModel.swift
//  Twitter
//
//  Created by Gaurav Gupta on 30/05/22.
//

import Foundation

class TweetRowViewModel: ObservableObject {
    let tweet: Tweet
    private let service = TweetService()

    init(tweet: Tweet) {
        self.tweet = tweet
    }
    
    func likeTweet() {
        service.likeTweet()
    }
}

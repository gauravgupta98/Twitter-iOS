//
//  FeedViewModel.swift
//  Twitter
//
//  Created by Gaurav Gupta on 23/05/22.
//

import Foundation

class FeedViewModel: ObservableObject {
    @Published var tweets = [Tweet]()
    let service = TweetService()
    
    init() {
        fetchTweets()
    }
    
    func fetchTweets() {
        service.fetchTweets { tweets in
            self.tweets = tweets
        }
    }
}

//
//  ProfileViewModel.swift
//  Twitter
//
//  Created by Gaurav Gupta on 26/05/22.
//

import Foundation

class ProfileViewModel: ObservableObject {
    @Published var tweets = [Tweet]()
    
    private let service = TweetService()
    private let user: User
    
    init(user: User) {
        self.user = user
        self.fetchUserTweets()
    }
    
    func fetchUserTweets() {
        guard let uid = user.id else { return }
        
        service.fetchTweets(forUid: uid) { tweets in
            self.tweets = tweets
        }
    }
}

//
//  NewTweetViewModel.swift
//  Twitter
//
//  Created by Gaurav Gupta on 23/05/22.
//

import Foundation

class UploadTweetViewModel: ObservableObject {
    @Published var didUploadTweet = false
    let service = TweetService()
    
    func uploadTweet(withCaption caption: String) {
        service.uploadTweet(caption: caption) { success in
            if success {
                self.didUploadTweet = true
            }
        }
    }
}

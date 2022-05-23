//
//  NewTweetViewModel.swift
//  Twitter
//
//  Created by Gaurav Gupta on 23/05/22.
//

import Foundation

class UploadTweetViewModel: ObservableObject {
    let service = TweetService()
    
    func uploadTweet(withCaption caption: String) {
        service.uploadTweet(caption: caption)
    }
}

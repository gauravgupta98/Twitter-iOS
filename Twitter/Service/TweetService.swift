//
//  TweetService.swift
//  Twitter
//
//  Created by Gaurav Gupta on 23/05/22.
//

import Foundation
import Firebase

struct TweetService {
    func uploadTweet(caption: String, completion: @escaping(Bool) -> Void) {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        let data = ["uid": uid,
                    "caption": caption,
                    "likes": 0,
                    "timestamp": Timestamp(date: Date())] as [String: Any]
        
        Firestore.firestore().collection("tweets")
            .document().setData(data) { error in
                if let error = error {
                    print("DEBUG: Failed to upload tweet with error: \(error.localizedDescription)")
                    completion(false)
                } else {
                    completion(true)
                }
            }
    }
}

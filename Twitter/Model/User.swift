//
//  User.swift
//  Twitter
//
//  Created by Gaurav Gupta on 11/05/22.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let profileImageUrl: String
    let email: String
}

//
//  AuthViewModel.swift
//  Twitter
//
//  Created by Gaurav Gupta on 06/05/22.
//

import Foundation
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
}

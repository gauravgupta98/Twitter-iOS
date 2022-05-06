//
//  TwitterApp.swift
//  Twitter
//
//  Created by Gaurav Gupta on 28/04/22.
//

import SwiftUI
import Firebase

@main
struct TwitterApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }
    }
}

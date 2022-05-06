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
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environmentObject(viewModel)
        }
    }
}

//
//  UserStatsView.swift
//  Twitter
//
//  Created by Gaurav Gupta on 01/05/22.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 24) {
            HStack(spacing: 4) {
                Text("807")
                    .bold()
                
                Text("Following")
                    .foregroundColor(.gray)
            }
                                
            HStack(spacing: 4) {
                Text("6.9M")
                    .bold()
                
                Text("Followers")
                    .foregroundColor(.gray)
            }
        }
        .padding(.vertical)
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}

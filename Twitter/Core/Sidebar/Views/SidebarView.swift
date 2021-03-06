//
//  SidebarView.swift
//  Twitter
//
//  Created by Gaurav Gupta on 01/05/22.
//

import SwiftUI
import Kingfisher

struct SidebarView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        if let user = authViewModel.currentUser {
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    KFImage(URL(string: user.profileImageUrl))
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 48, height: 48)
                        
                    VStack(alignment: .leading, spacing: 4) {
                        Text(user.fullname)
                            .font(.headline)
                        
                        Text("@\(user.username)")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    
                    UserStatsView()
                        .font(.subheadline)
                }
                .padding(.leading)
                
                ForEach(SidebarViewModel.allCases, id: \.rawValue) {viewModel in
                    if viewModel == .profile {
                        NavigationLink {
                            ProfileView(user: user)
                        } label: {
                            SidebarOptionRowView(viewModel: viewModel)
                        }
                    } else if viewModel == .logout {
                        Button {
                            authViewModel.logout()
                        } label: {
                            SidebarOptionRowView(viewModel: viewModel)
                        }
                    } else {
                        SidebarOptionRowView(viewModel: viewModel)
                    }
                }
                .padding(.vertical, 3)
                
                Spacer()
            }
        }
    }
}

struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarView()
    }
}

//
//  SidebarView.swift
//  Twitter
//
//  Created by Gaurav Gupta on 01/05/22.
//

import SwiftUI

struct SidebarView: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Circle()
                    .frame(width: 48, height: 48)
                    
                VStack(alignment: .leading, spacing: 4) {
                    Text("Bruce Wayne")
                        .font(.headline)
                    
                    Text("@batman")
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
                        ProfileView()
                    } label: {
                        SidebarOptionRowView(viewModel: viewModel)
                    }
                } else if viewModel == .logout {
                    Button {
                        
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

struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarView()
    }
}

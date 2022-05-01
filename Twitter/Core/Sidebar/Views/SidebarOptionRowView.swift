//
//  SidebarOptionRowView.swift
//  Twitter
//
//  Created by Gaurav Gupta on 01/05/22.
//

import SwiftUI

struct SidebarOptionRowView: View {
    let viewModel: SidebarViewModel
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: viewModel.imageName)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(viewModel.title)
                .font(.subheadline)
                .foregroundColor(colorScheme == .dark ? .white : .black)
            
            Spacer()
        }
        .frame(height: 39)
        .padding(.horizontal)
    }
}

struct SidebarOptionRowView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarOptionRowView(viewModel: .profile)
    }
}

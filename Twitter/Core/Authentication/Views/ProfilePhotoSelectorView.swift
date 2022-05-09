//
//  ProfilePhotoSelectorView.swift
//  Twitter
//
//  Created by Gaurav Gupta on 09/05/22.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    var body: some View {
        VStack {
            HeaderView(title: "Create your account.",
                       caption: "Add a profile photo")
            
            Button {
                
            } label: {
                Button {
                    
                } label: {
                    VStack {
                        Image(systemName: "plus")
                            .resizable()
                            .renderingMode(.template)
                            .frame(width: 27, height: 27)
                            .padding()
                            .background(Color(.systemBlue))
                            .foregroundColor(.white)
                            .clipShape(Circle())
                        
                        Text("Photo")
                    }
                }
                .padding()
            }
            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}

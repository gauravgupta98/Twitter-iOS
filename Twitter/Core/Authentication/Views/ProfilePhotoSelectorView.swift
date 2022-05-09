//
//  ProfilePhotoSelectorView.swift
//  Twitter
//
//  Created by Gaurav Gupta on 09/05/22.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    @State private var showImagePicker = false
    @State private var selectedImage: UIImage?
    @State private var profileImage: Image?
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack {
            HeaderView(title: "Setup account.",
                       caption: "Add a profile photo")
            
            Button {
                showImagePicker.toggle()
            } label: {
                if let profileImage = profileImage {
                    profileImage
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .padding()
                        .padding(.top, 60)
                } else {
                    VStack {
                        Image(systemName: "plus")
                            .renderingMode(.template)
                            .frame(width: 27, height: 27)
                            .padding()
                            .background(Color(.systemBlue))
                            .foregroundColor(.white)
                            .clipShape(Circle())
                            
                        Text("Photo")
                    }
                    .padding()
                    .padding(.top, 60)
                }
            }
            .sheet(isPresented: $showImagePicker, onDismiss: loadImage) {
                ImagePicker(selectedImage: $selectedImage)
            }
            
            Button {
                if let selectedImage = selectedImage {
                    viewModel.uploadProfileImage(selectedImage)
                }
            } label: {
                Text("Continue")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width:300, height: 48)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .disabled(profileImage == nil)
            .opacity(profileImage != nil ? 1 : 0.5)
            .shadow(color: .gray.opacity(0.5), radius: 9, x: 0, y: 0)
            .padding(.top, 48)
            
            Spacer()
        }
        .ignoresSafeArea()
    }
    
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        profileImage = Image(uiImage: selectedImage)
    }
}

struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}

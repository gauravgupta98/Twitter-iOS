//
//  LoginView.swift
//  Twitter
//
//  Created by Gaurav Gupta on 04/05/22.
//
import SwiftUI

struct LoginView: View {
    var body: some View {
        // parent container
        VStack {
            // header view
            VStack(alignment: .leading) {
                HStack { Spacer() }

                Text("Hello.")
                    .font(.largeTitle)
                    .fontWeight(.semibold)

                Text("Welcome Back")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            .frame(height: 270)
            .padding(.leading)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(RoundedShape(corners: .bottomRight))

            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

//
//  NewTweetView.swift
//  Twitter
//
//  Created by Gaurav Gupta on 02/05/22.
//

import SwiftUI

struct NewTweetView: View {
    @State private var caption = ""
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    print("Dismiss")
                } label : {
                    Text("Cancel")
                        .foregroundColor(Color(.systemBlue))
                }
                
                Spacer()
                
                Button {
                    print("Tweet")
                } label : {
                    Text("Tweet")
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 6)
            
            Divider()
            
            HStack(alignment: .top) {
                Circle()
                    .frame(width: 63, height: 63)
                
                TextArea("What's happening", text: $caption)
            }
            .padding()
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}

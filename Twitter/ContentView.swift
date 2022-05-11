//
//  ContentView.swift
//  Twitter
//
//  Created by Gaurav Gupta on 01/05/22.
//

import SwiftUI
import Kingfisher

struct ContentView: View {
    @State private var showMenu = false
    @Environment(\.colorScheme) var colorScheme
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        Group {
            if viewModel.userSession == nil {
                LoginView()
            } else {
                mainInterfaceView
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    var mainInterfaceView: some View {
        ZStack(alignment: .topLeading) {
            MainTabView()
                .navigationBarHidden(showMenu)
            
            if (showMenu) {
                ZStack {
                    Color(colorScheme == .dark ? .white : .black)
                        .opacity(0.3)
                }
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.15)) {
                        showMenu = false
                    }
                }
                .ignoresSafeArea()
            }
            
            SidebarView()
                .frame(width: 300)
                .offset(x: showMenu ? 0 : -300, y: 0)
                .background(showMenu ?
                            colorScheme == .dark ? Color.black : Color.white
                            : Color.clear)
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                if let user = viewModel.currentUser {
                    Button {
                        withAnimation(.easeInOut(duration: 0.15)) {
                            showMenu.toggle()
                        }
                    } label: {
                        KFImage(URL(string: user.profileImageUrl))
                            .resizable()
                            .scaledToFill()
                            .clipShape(Circle())
                            .frame(width: 33, height: 33)
                    }
                }
            }
        }
        .onAppear {
            showMenu = false
        }
    }
}

//
//  CurrentUserProfileView.swift
//  TinderClone
//
//  Created by Healthy on 4/20/24.
//

import SwiftUI

struct CurrentUserProfileView: View {
    @State private var showEditProfile = false
    let user: User
    
    var body: some View {
        NavigationStack {
            List {
                // header view
                CurrentUserProfileHeaderView(user: user)
                    .onTapGesture {
                        showEditProfile.toggle()
                    }
                
                // account info
                Section("Account Information") {
                    HStack {
                        Text("Name")
                        
                        Spacer()
                        
                        Text(user.fullName)
                    }
                    
                    HStack {
                        Text("Email")
                        
                        Spacer()
                        
                        Text("test@gmail.com")
                    }
                }
                
                // legal
                Section("Legal") {
                    Text("Terms of Service")
                }
                
                // logout/delete
                Section {
                    Button("Logout") {
                        print("음")
                    }
                    .foregroundStyle(.red)
                }
                
                Section {
                    Button("Delete Account") {
                        print("음")
                    }
                    .foregroundStyle(.red)
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .fullScreenCover(isPresented: $showEditProfile, content: {
                EditProfileView(user: user)
            })
        }
    }
}

#Preview {
    CurrentUserProfileView(user: MockData.users[0])
}

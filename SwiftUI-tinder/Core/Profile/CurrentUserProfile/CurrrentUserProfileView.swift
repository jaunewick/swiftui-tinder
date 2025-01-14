//
//  CurrrentUserProfileView.swift
//  SwiftUI-tinder
//
//  Created by Daniel Giao on 2025-01-11.
//

import SwiftUI

struct CurrrentUserProfileView: View {
    @State private var showEditProfile = false
    let user: User

    var body: some View {
        NavigationStack {
            List {
                // Todo: header view
                CurrentHeaderProfileView(user: user)
                    .onTapGesture {
                        showEditProfile.toggle()
                    }

                // Todo: account info
                Section("Account Information") {
                    HStack {
                        Text("Name")

                        Spacer()

                        Text(user.fullname)
                    }

                    HStack {
                        Text("Email")

                        Spacer()

                        Text("test@icloud.com")
                    }
                }
                // Todo: legal
                Section("Legal") {
                    Text("Terms of Service")
                }

                // Todo: logout/delete
                Section {
                    Button("Logout") {
                        print("DEBUG: Logout here..")
                    }
                }
                .foregroundStyle(.red)

                Section {
                    Button("Delete Account") {
                        print("DEBUG: Delete account here..")
                    }
                }
                .foregroundStyle(.red)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .fullScreenCover(isPresented: $showEditProfile) {
                EditProfileView(user: user)
            }
        }
    }
}

#Preview {
    CurrrentUserProfileView(user: MockData.users[0])
}

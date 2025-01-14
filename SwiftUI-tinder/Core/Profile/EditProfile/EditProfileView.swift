//
//  EditProfileView.swift
//  SwiftUI-tinder
//
//  Created by Daniel Giao on 2025-01-11.
//

import SwiftUI

struct EditProfileView: View {
    @Environment(\.dismiss) var dismiss
    let user: User
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ProfileImageGridView(user: user)
            }
            .scrollIndicators(.hidden)
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") {
                        dismiss()
                    }
                    .fontWeight(.semibold)
                }
            }
        }
    }
}

#Preview {
    EditProfileView(user: MockData.users[0])
}

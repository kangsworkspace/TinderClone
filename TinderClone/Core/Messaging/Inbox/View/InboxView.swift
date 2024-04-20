//
//  InboxView.swift
//  TinderClone
//
//  Created by Healthy on 4/21/24.
//

import SwiftUI

struct InboxView: View {
    var body: some View {
        NavigationStack {
            List {
                NewMatchesView()
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Matches")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    InboxView()
}

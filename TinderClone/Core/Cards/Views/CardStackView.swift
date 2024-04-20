//
//  CardStackView.swift
//  TinderClone
//
//  Created by Healthy on 4/18/24.
//

import SwiftUI

struct CardStackView: View {
    @EnvironmentObject var matchManager: MatchManager
    @State private var showMatchView = false
    @StateObject var viewModel = CardViewModel(service: CardService())
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack(spacing: 16) {
                    ZStack {
                        ForEach(viewModel.cardModelds) { card in
                            CardView(viewModel: viewModel, model: card)
                        }
                    }
                    
                    if !viewModel.cardModelds.isEmpty {
                        SwipeActionButtonView(viewModel: viewModel)
                    }
                }
                .blur(radius: showMatchView ? 20 : 0)
                
                if showMatchView {
                    UserMatchView(show: $showMatchView)
                }
            }
            .animation(.easeInOut, value: showMatchView)
            .onReceive(matchManager.$matchedUser) { user in
                showMatchView = user != nil
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    HStack {
                        Image(systemName: "flame")
                            .foregroundStyle(Color.pink)
                        Text("tinder")
                            .fontWeight(.bold)
                    }
                    .font(.title2)
                }
            }
        }
    }
}

#Preview {
    CardStackView()
        .environmentObject(MatchManager(service: MockMatchService()))
}

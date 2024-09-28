//
//  ContentView.swift
//  InstagramView
//
//  Created by Ibrahim Mohsin on 9/28/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image("TheHague")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
                    .clipShape(Circle())
                Text("TheHague")
                    .font(.subheadline)
                    .bold()
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal, 8)
            Image("TheHague")
                .resizable()
                .scaledToFit()
            HStack(spacing: 16) {
                Image(systemName: "heart")
                Image(systemName: "message")
                Image(systemName: "paperplane")
                Spacer()
                Image(systemName: "bookmark")
            }
            .font(.title2)
            Text("456,920 likes")
                .font(.footnote)
                .fontWeight(.semibold)
            Text("**LebronLuvr23** Glorious day here in the Netherlands!")
                .font(.footnote)
            Text("February 14")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  InstagramView
//
//  Created by Ibrahim Mohsin on 9/28/24.
//

import SwiftUI

struct ContentView: View {
    @State var isLiked = false
    var likeCount = 450000
    
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
                
                Button(action: {
                    isLiked.toggle()
                }) {
                    Image(systemName: isLiked ? "heart.fill" : "heart")
                        .foregroundColor(isLiked ? .red : .black)
                        .animation(.easeInOut(duration: 0.1), value: isLiked)
                }
                
                Image(systemName: "message")
                Image(systemName: "paperplane")
                Spacer()
                Image(systemName: "bookmark")
            }
            .font(.title2)
            Text(String(isLiked ? likeCount + 1 : likeCount))
                .font(.footnote)
                .fontWeight(.semibold)
            Text("**TheHague** Glorious day here in the Netherlands!")
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

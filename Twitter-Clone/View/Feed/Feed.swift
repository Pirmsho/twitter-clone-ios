//
//  Feed.swift
//  Twitter-Clone
//
//  Created by Davit Pirmisashvili on 05.04.23.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 18) {
                
                TweetCellView(tweet: sampleText, tweetImage: "post")
                
                Divider()
                
                ForEach(1...20, id: \.self) { _ in
                    TweetCellView(tweet: sampleText)
                    Divider()
                }
            }
            .padding(.top)
            .padding(.horizontal)
            .zIndex(0)
        }
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}

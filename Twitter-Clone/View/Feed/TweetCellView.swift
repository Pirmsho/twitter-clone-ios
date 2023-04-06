//
//  TweetCellView.swift
//  Twitter-Clone
//
//  Created by Davit Pirmisashvili on 06.04.23.
//

import SwiftUI

struct TweetCellView: View {
    
    var tweet: String
    var tweetImage: String?
    
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 10, content:
                    {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                
                VStack(alignment: .leading,
                       content: {
                    (
                        Text("Cem ")
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        +
                        Text("@cem_salta")
                            .foregroundColor(.gray)
                    )
                    
                    Text(tweet)
                        .frame(maxHeight: 100, alignment: .top)
                    
                    if let image = tweetImage {
                        GeometryReader { proxy in
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: proxy.frame(in: .global).width, height: 250)
                                .cornerRadius(15)
                        }
                        .frame(height: 250)
                    }
                })
            })
            
            // Cell Bottom
            
            HStack(spacing: 50) {
                Button {
                    
                } label: {
                    Image("Comments")
                        .resizable()
                        .frame(width: 16, height: 16)
                }.foregroundColor(.gray)
                
                
                Button {
                    
                } label: {
                    Image("Retweet")
                        .resizable()
                        .frame(width: 18,height: 14)
                }
                
                Button {
                    
                } label: {
                    Image("love")
                        .resizable()
                        .frame(width: 18, height: 15)
                }.foregroundColor(.gray)

                Button {
                    
                } label: {
                    Image("upload")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 18, height: 15)
                }.foregroundColor(.gray)
                    
            }
            .padding(.top, 4)
            
        }
    }
}

struct TweetCellView_Previews: PreviewProvider {
    static var previews: some View {
        TweetCellView(tweet: sampleText)
    }
}


var sampleText = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi non quis exercitationem culpa nesciunt nihil aut nostrum explicabo reprehenderit optio amet ab temporibus asperiores quasi cupiditate. Voluptatum ducimus voluptates voluptas?"

//
//  BlogCardView.swift
//  FilmFrothMobile
//
//  Created by Konnor Beaulier on 9/3/21.
//

import SwiftUI
import SDWebImage

struct BlogCardView: View {
    var post: BlogPosts.Post
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .fill(Color("BlogColor"))
                .shadow(radius: 5)
            VStack {
                Image(systemName: "person.fill")
                    .data(url: URL(string: post.seoPicURL)!)
                    .scaledToFit()
                Text("\(post.title)")
                    .font(.largeTitle)
                Text("By: \(post.author)")
                    .font(.caption)
                Text("\(post.date)")
                    .font(.caption2)
                
            }
        }
        .padding()
    }
}

struct BlogCardView_Previews: PreviewProvider {
    static var previews: some View {
        BlogCardView(post: BlogPosts.data[0])
            .previewLayout(.fixed(width: 400, height: 300))
    }
}

extension Image {
    func data(url: URL) -> Self {
        if let data = try? Data(contentsOf: url) {
            return Image(uiImage: UIImage(data: data)!)
                .resizable()
        }
        return self
            .resizable()
    }
}

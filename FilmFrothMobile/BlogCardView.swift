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
        VStack {
            Image(systemName: "person.fill")
                .data(url: URL(string: post.seoPicURL)!)
                .scaledToFit()
            Text("\(post.title)")
                .font(.largeTitle)
            Text("By: \(post.author)")
                .font(.caption)
            
        }
    }
}

struct BlogCardView_Previews: PreviewProvider {
    static var test_post = BlogPosts.Post(id: "/test", author: "Testing", title: "Test Movie Strikes Again", preview: "This is a testing film for all the testing one could dream of", date: "2021-09-06", content: "# Film", style: 2)
    static var previews: some View {
        BlogCardView(post: test_post)
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

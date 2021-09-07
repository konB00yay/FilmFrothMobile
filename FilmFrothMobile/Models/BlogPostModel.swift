//
//  BlogPostModel.swift
//  FilmFrothMobile
//
//  Created by Konnor Beaulier on 9/6/21.
//

import Foundation

typealias BlogData = AllArticlesQuery.Data.BlogPostCollection

struct BlogPosts: Decodable {
    var blogs: [Post]

    init(_ blogs: BlogData?){
        self.blogs = blogs?.items.map({post -> Post in
            Post(post)
        }) ?? []
    }


    struct Post: Identifiable, Decodable {
        var id: String
        var title: String
        var author: String
        var preview: String
        var date: String
        var content: String
        var style: Int
        
        var seoPicURL: String
        var previewImageURL: String
        
        init(_ post: BlogData.Item?) {
            self.id = post?.path ?? ""
            self.author = post?.author ?? ""
            self.title = post?.title ?? ""
            self.preview = post?.preview ?? ""
            self.date = post?.date ?? ""
            self.content = post?.content ?? ""
            self.style = post?.style ?? 0
            self.seoPicURL = post?.seoPic?.url ?? ""
            self.previewImageURL = post?.previewImage?.url ?? ""
        }
        
        init(id: String, author: String, title: String, preview: String, date: String, content: String, style: Int){
            self.id = id
            self.author = author
            self.title = title
            self.preview = preview
            self.date = date
            self.content = content
            self.style = style
            self.seoPicURL = "https://images.unsplash.com/photo-1440404653325-ab127d49abc1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"
            self.previewImageURL = "https://images.unsplash.com/photo-1440404653325-ab127d49abc1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"
        }
    }
}

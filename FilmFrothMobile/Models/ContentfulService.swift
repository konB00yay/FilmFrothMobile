//
//  ContentfulService.swift
//  FilmFrothMobile
//
//  Created by Konnor Beaulier on 9/3/21.
//

import Foundation
import Apollo
import SwiftUI

final class ContentfulService: ObservableObject{
    
    @Published var blogPosts: [BlogPosts.Post] = []
    @Published var currPagePosts: [BlogPosts.Post] = []
    @Published var totalArticles: Int = 0
    
    private var skipArticles: Int = 0
    
    var allArticlesLoaded: Bool {
        skipArticles == totalArticles
    }
    
    init(){
    }
    
    func process(data: BlogData) -> [BlogPosts.Post] {
        return BlogPosts(data).blogs
    }
    
    func loadAllArticles(){
        if ProcessInfo.processInfo.environment["XCODE_RUNNING_FOR_PREVIEWS"] == "1" {
            self.totalArticles = 3
            self.currPagePosts = BlogPosts.data
        } else {
            DispatchQueue.main.async {
                Network.shared.apollo.fetch(query: AllArticlesQuery(limit: 10, skip:0)) { [weak self] result in
                    switch result {
                    case .success(let graphQLResult):
                        if let blogs = graphQLResult.data?.blogPostCollection {
                            self?.totalArticles = blogs.total
                            self?.currPagePosts = self?.process(data: blogs) ?? []
                        }
                    case .failure(let error):
                        print("Error", error)
                    }
                }
            }
        }
    }
    
    func loadNextArticles(){
        if(skipArticles + 10 > totalArticles) {
            skipArticles = totalArticles
        } else {
            skipArticles = skipArticles + 10
        }
        DispatchQueue.main.async {
            Network.shared.apollo.fetch(query: AllArticlesQuery(limit: 10, skip: self.skipArticles)) { [weak self] result in
                switch result {
                case .success(let graphQLResult):
                    if let blogs = graphQLResult.data?.blogPostCollection {
                        self?.totalArticles = blogs.total
                        self?.blogPosts = self?.currPagePosts ?? []
                        self?.currPagePosts = self?.process(data: blogs) ?? []
                    }
                case .failure(let error):
                    print("Error", error)
                }
            }
        }
    }
}

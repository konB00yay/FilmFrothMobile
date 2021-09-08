//
//  ContentfulService.swift
//  FilmFrothMobile
//
//  Created by Konnor Beaulier on 9/3/21.
//

import Foundation
import Apollo

final class ContentfulService: ObservableObject{
    
    @Published var blogPosts: [BlogPosts.Post] = []
    
    init(){
        self.loadAllArticles()
    }
    
    func process(data: BlogData) -> [BlogPosts.Post] {
        return BlogPosts(data).blogs
    }
    
    func loadAllArticles(){
        if ProcessInfo.processInfo.environment["XCODE_RUNNING_FOR_PREVIEWS"] == "1" {
            self.blogPosts = BlogPosts.data
        } else {
            DispatchQueue.global(qos: .background).async {
                Network.shared.apollo.fetch(query: AllArticlesQuery()) { [weak self] result in
                    switch result {
                    case .success(let graphQLResult):
                        if let blogs = graphQLResult.data?.blogPostCollection {
                            self?.blogPosts = self?.process(data: blogs) ?? []
                        }
                    case .failure(let error):
                        print("Error", error)
                    }
                }
            }
        }
    }
}

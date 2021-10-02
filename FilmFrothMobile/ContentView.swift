//
//  ContentView.swift
//  FilmFrothMobile
//
//  Created by Konnor Beaulier on 9/2/21.
//

import SwiftUI

struct ContentView: View {
    @Binding var currPagePosts: [BlogPosts.Post]
    @Binding var blogPosts: [BlogPosts.Post]
    @Binding var totalArticles: Int
    @EnvironmentObject var contentfulService: ContentfulService
    var body: some View {
        List {
            ForEach(currPagePosts) { post in
                NavigationLink(destination: PostView(post: post)){
                    BlogCardView(post: post)
                }
                .navigationViewStyle(StackNavigationViewStyle())
                .listRowBackground(Color("BlogColor"))
            }
            if(!self.contentfulService.allArticlesLoaded){
                Button("Load More", action: {
                    self.contentfulService.loadNextArticles()
                })
            }
        }
        .navigationTitle("Film And Froth")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(currPagePosts: .constant(BlogPosts.data), blogPosts: .constant(BlogPosts.data), totalArticles: .constant(3))
            .environmentObject(ContentfulService())
    }
}

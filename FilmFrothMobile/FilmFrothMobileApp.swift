//
//  FilmFrothMobileApp.swift
//  FilmFrothMobile
//
//  Created by Konnor Beaulier on 9/2/21.
//

import SwiftUI

@main
struct FilmFrothMobileApp: App {
    @ObservedObject var contentfulService = ContentfulService()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView(currPagePosts: $contentfulService.currPagePosts, blogPosts: $contentfulService.blogPosts, totalArticles: $contentfulService.totalArticles)
                    .environmentObject(contentfulService)
            }
            .onAppear{
                contentfulService.loadAllArticles()
            }
        }
    }
}

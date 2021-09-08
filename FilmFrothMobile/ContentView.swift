//
//  ContentView.swift
//  FilmFrothMobile
//
//  Created by Konnor Beaulier on 9/2/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var contentfulService: ContentfulService
    var body: some View {
        List {
            ForEach(contentfulService.blogPosts) { post in
                NavigationLink(destination: PostView(post: post)){
                    BlogCardView(post: post)
                }
                .navigationViewStyle(StackNavigationViewStyle())
            }
        }
        .navigationTitle("Film And Froth")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ContentfulService())
    }
}

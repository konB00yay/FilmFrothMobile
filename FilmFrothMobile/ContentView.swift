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
        ScrollView {
            ForEach(contentfulService.blogPosts) { post in
                BlogCardView(post: post)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ContentfulService())
    }
}

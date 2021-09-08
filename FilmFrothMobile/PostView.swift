//
//  PostView.swift
//  FilmFrothMobile
//
//  Created by Konnor Beaulier on 9/7/21.
//

import SwiftUI

struct PostView: View {
    let post: BlogPosts.Post
    var body: some View {
        Text("\(post.title)")
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: BlogPosts.data[0])
    }
}

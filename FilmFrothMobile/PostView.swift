//
//  PostView.swift
//  FilmFrothMobile
//
//  Created by Konnor Beaulier on 9/7/21.
//

import SwiftUI
import Ink
import MarkdownView

struct PostView: View {
    let post: BlogPosts.Post
    let srcMod = Modifier(target: .images) { html, markdown in
        html.replacingOccurrences(of: "//images.ctfassets", with: "https://images.ctfassets")
    }
    let imgMod = Modifier(target: .images){ html, markdown in
        html.replacingOccurrences(of: "src=\"https://images.ctfassets", with: "width='360' src=\"https://images.ctfassets")
    }
    var parser: MarkdownParser {
        var p = MarkdownParser()
        p.addModifier(srcMod)
        p.addModifier(imgMod)
        return p
    }
    var html: String {
        return parser.html(from: post.content)
    }
    let md = MarkdownView()
    var body: some View {
        ScrollView(.vertical){
            Text("\(post.title)")
                .font(.title)
            Spacer()
            PostContentView(postContent: html)
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: BlogPosts.data[0])
    }
}

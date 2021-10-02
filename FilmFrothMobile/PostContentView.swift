//
//  PostContentView.swift
//  FilmFrothMobile
//
//  Created by Konnor Beaulier on 9/16/21.
//

import SwiftUI
import WebKit
import RichText

struct PostContentView: View {
    let postContent: String
    
    var postHTML: String {
        return postContent.replacingOccurrences(of: "\"", with: "'")
    }
    
    var body: some View {
        ScrollView(.vertical){
            RichText(html: postHTML)
        }
    }
}

struct PostContentView_Previews: PreviewProvider {
    static var previews: some View {
        PostContentView(postContent: "<p>Here's something after</p><p>Another one</p><img width=360 src=https://images.ctfassets.net/f4exvld7r7c2/5EyQiwgbXNVyNd6BEPwQVB/9aa12c8795c74499be14cd1539d4b726/malignant.jpg alt=Malignant/><p>The intro, as it unfolds, is a rather wild ride, and you get a real taste for the cheesy 80's horror the film leans into with the big line from Dr. Weaver being, 'Let's cut out the cancer.'</p>")
    }
}

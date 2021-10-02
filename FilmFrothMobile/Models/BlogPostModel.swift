//
//  BlogPostModel.swift
//  FilmFrothMobile
//
//  Created by Konnor Beaulier on 9/6/21.
//

import Foundation

typealias BlogData = AllArticlesQuery.Data.BlogPostCollection

struct BlogPosts: Decodable {
    var blogs: [Post] = []

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

extension BlogPosts{
    static var data: [Post] {
        [
            Post(id: "/test-3", author: "Testing", title: "Test Movie Strikes Again", preview: "This is a testing film for all the testing one could dream of", date: "2021-09-06", content: """
                    ![Malignant](//images.ctfassets.net/f4exvld7r7c2/5EyQiwgbXNVyNd6BEPwQVB/9aa12c8795c74499be14cd1539d4b726/malignant.jpg)\n<cite>Malignant [2021]</cite>\n\n# Film\nThis movie comes in __HOT__ right out of the gate. The intro sequence in the hospital is bonkers, and I'd be lying if I said I didn't want Gabriel's panda socks.\n\nBut you really come into this movie and get thrust into the throngs of the action with Dr. Weaver (Jacqueline McKenzie), Dr. Fields (Christain Clemenson), and Dr. Gregory (Amir AboulEla) attempting to control the mysterious figure Gabriel, who apparently has some telepathic control of... electricity?\n\nThe intro, as it unfolds, is a rather wild ride, and you get a real taste for the cheesy 80's horror the film leans into with the big line from Dr. Weaver being, \"Let's cut out the cancer.\"\n\nThe film, in my eyes, was really divided into 2 parts, one that lasted about 2/3 of the film -- and then the third act, which takes up the final 1/3 (how 'bout that math am I right or am I right). \n\nFor the first 2/3 of the movie, James Wan really gives into the corny 80's horror lines and giallo horror of the past, which is really fun, especially since you rarely see those stylistic choices these days (unless a movie is just kind of *bad* and it comes off as corny on accident). \n\nBut what is giallo horror you ask? Essentially it boils down to horror with detective elements blended into it. The name comes from a series of paperback mystery and crime thrillers that were popular in Italy, where the covers were yellow. Which also is the translation for giallo in Italian, yellow, we've come full circle!!\n\nSo, Wan is really feeding into this subgenre of horror by having probably two of the cheesier police officers ever in Kekoa Shaw (George Young) and Regina Moss (Michole Briana White). Our first glimpse of that is the ever so classic detective with a sucker looking over an autopsy and delivering some deadpan line that is oozing with 80's film noir. While I use the word \"cheesy\" pretty liberally here its important to note that's exactly what Wan is going for in this film, the zoom in of the faces with the music upon realization of something dastardly, event he delivery of lines. It truly is a massive homage to 80's horror, and its __awesome__. \n\nAfter all the setup in the first 66% of the film and the detective work from Shaw, Ross, and our protagonist Madison's (Annabelle Wallis) sister Sydney (Maddie Hasson) we take a *massive* spin in the third act (which for you math-heads out theres is the remaining ~33%) and get to the root of the James Wan excellence. \n\n__The brutal horror of a good twist.__\n\n![Malignant-2](//images.ctfassets.net/f4exvld7r7c2/3K97SAvdNg3W2bdO7FtBEq/f600e9543a9b54a40b9c4ca8b173829f/malignant-2.png)\n<cite>Malignant [2021]</cite>\n\nThe third act blew my mind, completely blew it open. What transpired in *Malignant* in the final 30-40 minutes was quite possibly the last thing I ever expected to see in my life. And I ate that shit up. __Ate that shit UP__.\n\nNot only is the third act the most brutal portion of the movie but also the most disturbing. James Wan has this innate ability to intertwine this brutality into the story so effortlessly it is absolutely remarkable to watch unfold. He did the same thing in *Saw* and even portions of *Dead Silence*, and the first *Saw* movie is obviously the best. \n\nGabriel was such a jarring character; I don't want to spoil anything so I won't delve into any details but holy shit it's __wild__. \n\nSome absolute favorite parts of the movie:\n\n- The camera work: __Wow__, this might be one of if not the most technically exotic piece that James Wan has done. The whole dollhouse aerial view sequence of Madison was unbelievable. It almost gives the viewer a sort of god complex and feeling of control in such an uncontrollable moment, it's incredible. Not to mention the sound mixing in conjunction with the camera work was astounding. This was a masterclass in technical horror work, James Wan at his best.\n- Action pieces: Gabriel's action sequences were undeniably __fun__. The brutality and again trying not to spoil anything but once you understand who Gabriel is and how he's positioned the actions he goes through are even more impressive. The speed, violence and movement are all so fluid and aggressive and flow with the story so incredibly -- it's perfection in my eyes. It's not just nonsensical violence for violence sake; this is a well-oiled horror action machine and James Wan is the conductor.\n\nI love James Wan's work, I consider myself *a stan*. But this might be one of my favorites from him, (and I have a huge spot in my fandom for *Saw* too) so this is considerable. Not saying I am the voice of horror fandom or anything... I'm just saying this was a great viewing experience for me and the movie as a whole was amazing. Absolutely recommend for anyone looking not only for a great movie but some excellent set pieces, action and camera work.\n\nLet the James Wan stans rejoice with me as he is back to his true form, and the world is better for it. But yeah I'm also excited for *Aquaman and the Lost Kingdom*.\n\n# Froth\nGiven my admiration for James Wan I had to pair his work with something of equal or greater admiration, like a classic BOGO. So of course I went with the Roger's Pilsner from Georgetown Brewing. Georgetown Brewing has made some exquisite beers much like what I had with [*Coco*](https://www.filmfroth.com/coco) which was the Lucille. But the Roger's Pilsner is something more of a staple in my opinion, not to dunk on Lucille, but this pilsner is one of the lightest beers I've drank but also packs on pounds of flavor. They use a German lager yeast in the brewing of this bad boy so you get some real great malty flavor. That combined with some quality Yakima hops is a really solid and well rounded flavor profile for a nice and light pilsner. Great for any occasion and especially for watching James Wan created characters get wrecked by a backwards walking cloaked figure using a medical excellence trophy as their weapon of choice. \n\nA rather niche scenario but it works.\n\nRoger's Pilsner </br>\nPilsner - German | 4.9% ABV </br>\nGeorgetown Brewing </br>\n[@georgetownbrewingco](https://www.instagram.com/georgetownbrewingco)
                    """
                 , style: 2),
            Post(id: "/test-2", author: "Testing", title: "Test Movie: Return of the Test", preview: "This is a testing film for all the testing one could dream of", date: "2021-09-05", content: "# Film", style: 2),
            Post(id: "/test-1", author: "Testing", title: "Test Movie", preview: "This is a testing film for all the testing one could dream of", date: "2021-09-04", content: "# Film", style: 2)
        ]
    }
}

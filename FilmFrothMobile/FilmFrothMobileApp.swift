//
//  FilmFrothMobileApp.swift
//  FilmFrothMobile
//
//  Created by Konnor Beaulier on 9/2/21.
//

import SwiftUI

@main
struct FilmFrothMobileApp: App {
    @StateObject var contentfulService = ContentfulService()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView()
                    .environmentObject(contentfulService)
            }
        }
    }
}

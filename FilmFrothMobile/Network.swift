//
//  Network.swift
//  FilmFrothMobile
//
//  Created by Konnor Beaulier on 9/5/21.
//

import Foundation
import Apollo

class Network {
    static let shared = Network()
    
    private(set) lazy var apollo: ApolloClient = {
        let spaceId = "" //Remove space id as well
        let client = URLSessionClient()
        let cache = InMemoryNormalizedCache()
        let store = ApolloStore(cache: cache)
        let provider = NetworkInterceptorProvider(client: client, store: store)
        let url = URL(string: "https://graphql.contentful.com/content/v1/spaces/\(spaceId)/environments/master")!
        let transport = RequestChainNetworkTransport(interceptorProvider: provider,
                                                     endpointURL: url)
        return ApolloClient(networkTransport: transport, store: store)
    }()
}

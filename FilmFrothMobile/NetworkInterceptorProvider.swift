//
//  NetworkInterceptorProvider.swift
//  FilmFrothMobile
//
//  Created by Konnor Beaulier on 9/5/21.
//

import Foundation

import Apollo

class NetworkInterceptorProvider: DefaultInterceptorProvider {
    override func interceptors<Operation: GraphQLOperation>(for operation: Operation) -> [ApolloInterceptor] {
        var interceptors = super.interceptors(for: operation)
        interceptors.insert(TokenInterceptor(), at: 0)
        return interceptors
    }
}

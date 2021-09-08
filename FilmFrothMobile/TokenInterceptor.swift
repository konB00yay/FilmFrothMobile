//
//  TokenInterceptor.swift
//  FilmFrothMobile
//
//  Created by Konnor Beaulier on 9/5/21.
//

import Foundation

import Apollo

class TokenInterceptor: ApolloInterceptor {
    func interceptAsync<Operation: GraphQLOperation>(
        chain: RequestChain,
        request: HTTPRequest<Operation>,
        response: HTTPResponse<Operation>?,
        completion: @escaping (Result<GraphQLResult<Operation.Data>, Error>) -> Void) {
        let token =  "Bearer "
        request.addHeader(name: "Authorization", value: token)
        
        chain.proceedAsync(request: request,
                           response: response,
                           completion: completion)
    }
}

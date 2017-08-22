//
//  PostNetworking.swift
//  MVC-S
//
//  Created by Kyle Lee on 8/20/17.
//  Copyright © 2017 Kyle Lee. All rights reserved.
//

import Foundation

class PostNetworking {
    private init() {}
    
    static func getPosts(completion: @escaping (GetPostsResponse) -> Void) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        NetworkingService.shared.getData(fromURL: url) { (json) in
            do {
                let response = try GetPostsResponse(json: json)
                completion(response)
            } catch {}
        }
    }
}

//
//  PostService.swift
//  InstagramClone
//
//  Created by Borislav Lorinkov on 19.07.23.
//

import Foundation
import Firebase

struct PostService {
    
    private static let postCollection = Firestore.firestore().collection("post")
    
    static func fetchFeedPosts() async throws -> [Post] {
        let snapshot = try await postCollection.getDocuments()
        //        self.posts = try snapshot.documents.compactMap({ queryDocumentSnapshot in
        //            let post = try queryDocumentSnapshot.data(as: Post.self)
        //            return post
        //        })
        
        var posts = try snapshot.documents.compactMap({try $0.data(as: Post.self)})
        
        for i in 0 ..< posts.count {
            let post = posts[i]
            let ownerUid = post.ownerId
            let postUser = try await UserService.fetchUser(withUid: ownerUid)
            posts[i].user = postUser
        }
        
        return posts
    }
    
    static func fetchUserPosts(uid: String) async throws -> [Post] {
        let snapshot = try await postCollection.whereField("ownerId", isEqualTo: uid).getDocuments()
        return try snapshot.documents.compactMap({try $0.data(as: Post.self)})
    }
}

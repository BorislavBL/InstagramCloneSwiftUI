//
//  FeedViewModel.swift
//  InstagramClone
//
//  Created by Borislav Lorinkov on 19.07.23.
//

import Foundation
import Firebase
import FirebaseFirestore

@MainActor
class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    init() {
        Task{try await fetchPosts()}
    }
    
    func fetchPosts() async throws{
        self.posts = try await PostService.fetchFeedPosts()
        
    }
}

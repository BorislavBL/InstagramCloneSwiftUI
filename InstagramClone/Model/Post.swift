//
//  Post.swift
//  InstagramClone
//
//  Created by Borislav Lorinkov on 7.07.23.
//

import Foundation
import Firebase

struct Post: Identifiable, Codable, Hashable {
    let id: String
    let ownerId: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Timestamp
    var user: User?
}


extension Post {
    static var MOCK_POST: [Post] = [
        .init(id: NSUUID().uuidString, ownerId: NSUUID().uuidString, caption: "This is some test caption", likes: 52, imageUrl: "event2", timestamp: Timestamp(), user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString, ownerId: NSUUID().uuidString, caption: "This is some test caption", likes: 72, imageUrl: "event1", timestamp: Timestamp(), user: User.MOCK_USERS[1]),
        .init(id: NSUUID().uuidString, ownerId: NSUUID().uuidString, caption: "This is some test caption", likes: 41, imageUrl: "surf", timestamp: Timestamp(), user: User.MOCK_USERS[2]),
        .init(id: NSUUID().uuidString, ownerId: NSUUID().uuidString, caption: "This is some test caption", likes: 2, imageUrl: "event2", timestamp: Timestamp(), user: User.MOCK_USERS[3]),
        .init(id: NSUUID().uuidString, ownerId: NSUUID().uuidString, caption: "This is some test caption", likes: 22, imageUrl: "event1", timestamp: Timestamp(), user: User.MOCK_USERS[2]),
        .init(id: NSUUID().uuidString, ownerId: NSUUID().uuidString, caption: "This is some test caption", likes: 4, imageUrl: "event2", timestamp: Timestamp(), user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString, ownerId: NSUUID().uuidString, caption: "This is some test caption", likes: 62, imageUrl: "event2", timestamp: Timestamp(), user: User.MOCK_USERS[1]),
        .init(id: NSUUID().uuidString, ownerId: NSUUID().uuidString, caption: "This is some test caption", likes: 2, imageUrl: "surf", timestamp: Timestamp(), user: User.MOCK_USERS[2]),
        .init(id: NSUUID().uuidString, ownerId: NSUUID().uuidString, caption: "This is some test caption", likes: 42, imageUrl: "event2", timestamp: Timestamp(), user: User.MOCK_USERS[3]),
    ]
}

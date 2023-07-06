//
//  User.swift
//  InstagramClone
//
//  Created by Borislav Lorinkov on 7.07.23.
//

import Foundation
import Firebase

struct User: Identifiable, Codable, Hashable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else {return false}
        return currentUid == id
    }
}


extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "Batman1", profileImageUrl: nil, fullname: "Bruce wain", bio:"Waganda forever", email: "brucethewain@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Batman2", profileImageUrl: nil, fullname: "Bruce wain", bio:"Waganda forever", email: "brucethewain@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Batman3", profileImageUrl: nil, fullname: "Bruce wain", bio:"Waganda forever", email: "brucethewain@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Batman4", profileImageUrl: nil, fullname: "Bruce wain", bio:"Waganda forever", email: "brucethewain@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Batman5", profileImageUrl: nil, fullname: "Bruce wain", bio:"Waganda forever", email: "brucethewain@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Batman6", profileImageUrl: nil, fullname: "Bruce wain", bio:"Waganda forever", email: "brucethewain@gmail.com")
    ]
}

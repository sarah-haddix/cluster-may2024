//
//  UserModel.swift
//  cluster-may2024
//
//  Created by Sarah Haddix on 5/4/24.
//

import Foundation

struct User: Codable {
    var user_id: String
    var name: String
    var n_followers: Int
    var n_following: Int
    var icon: URL
}

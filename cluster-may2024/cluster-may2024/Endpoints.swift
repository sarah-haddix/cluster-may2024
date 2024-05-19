//
//  Endpoints.swift
//  cluster-may2024
//
//  Created by Sarah Haddix on 5/19/24.
//

import Foundation

// not including getUserFace

// GET User Interaction
// Get the front-facing elements of a post
struct UserInteraction: Decodable {
    // Whether or not the subject follows the object
    var following: Bool
    // Whether or not the object follows the subject
    var followed: Bool
}

//
//  UserModel.swift
//  swift_todo
//
//  Created by alxayeed on 23/7/23.
//

import Foundation

struct UserModel: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}

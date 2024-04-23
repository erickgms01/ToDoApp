//
//  User.swift
//  ToDoList
//
//  Created by Francisco Erick Souza Gomes on 19/04/24.
//

import Foundation

struct User: Codable {
    let name: String
    let email: String
    let password: String
    let joined: TimeInterval
}

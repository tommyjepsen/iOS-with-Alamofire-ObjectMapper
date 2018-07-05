//
//  User.swift
//  start
//
//  Created by Tommy Jepsen on 04/07/2018.
//  Copyright © 2018 nordie. All rights reserved.
//

import Foundation

class User {
    
    var id: Int
    
    var token: String
    var firstName: String
    var lastName: String
    var email: String
    var password: String
    var country: String
    
    var createdAt: Date
    var updatedAt: Date?
    
    init(id: Int, token: String, firstName: String, lastName: String, email: String, password: String, country: String, createdAt: Date, updatedAt: Date?) {
        self.id = id
        self.token = token
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
        self.country = country
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}

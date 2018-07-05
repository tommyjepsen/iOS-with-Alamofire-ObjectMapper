//
//  Note.swift
//  start
//
//  Created by Tommy Jepsen on 05/07/2018.
//  Copyright © 2018 nordie. All rights reserved.
//

import Foundation
import SwiftyJSON
import ObjectMapper
import AlamofireObjectMapper

class Note: Mappable {
    var id: Int?
    
    var userId: String?
    var note: String?
    
    var createdAt: Date?
    var updatedAt: Date?
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        userId <- map["userId"]
        note <- map["note"]
        createdAt <- map["createdAt"]
        updatedAt <- map["updatedAt"]
    }
}


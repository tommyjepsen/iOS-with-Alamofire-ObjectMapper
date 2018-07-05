//
//  List.swift
//  start
//
//  Created by Tommy Jepsen on 05/07/2018.
//  Copyright © 2018 nordie. All rights reserved.
//


import Foundation
import SwiftyJSON
import ObjectMapper
import AlamofireObjectMapper

class List: Mappable {
    
    var result: [Note]?
    var count: Int?
    var pages: Int?

    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        result <- map["result"]
        count <- map["count"]
        pages <- map["pages"]

    }
}

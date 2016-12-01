//
//  UserClass.swift
//  ObjectMapperDemo
//
//  Copyright © 2016 objectMapperDemo. All rights reserved.
//

import Foundation
import ObjectMapper

class UserClass: BaseModel {
    
    var name: String?
    
    var modifiedAt: Date?
    
    var settings: [UserSetting]?
    
    override func mapping(map: Map) {
        name <- map["name"]
        modifiedAt <- (map["modified_at"], ISO8601DateTransform())
        settings <- map["settings"]
    }
    
}

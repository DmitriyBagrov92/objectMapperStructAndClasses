//
//  UserStruct.swift
//  ObjectMapperDemo
//
//  Created by Багров Дмитрий on 01/12/2016.
//  Copyright © 2016 objectMapperDemo. All rights reserved.
//

import Foundation
import ObjectMapper

struct UserStruct: ImmutableMappable {
    
    let name: String
    
    init(map: Map) throws {
        name = try map.value("name")
    }
    
    func mapping(map: Map) {
        name >>> map["name"]
    }
    
}

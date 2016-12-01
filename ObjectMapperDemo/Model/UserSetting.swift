//
//  UserSetting.swift
//  ObjectMapperDemo
//
//  Created by Багров Дмитрий on 01/12/2016.
//  Copyright © 2016 objectMapperDemo. All rights reserved.
//

import Foundation
import ObjectMapper

enum UserSettingsType: String {
    case isAdmin
    case notificationsEnabled
}

class UserSetting: BaseModel {
    
    var type: UserSettingsType?
    
    var value: Bool?
    
    override func mapping(map: Map) {
        type <- (map["user_settings_type"], EnumTransform())
        value <- map["value"]
    }
    
}

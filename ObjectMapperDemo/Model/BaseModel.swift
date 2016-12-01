//
//  BaseModel.swift
//  ObjectMapperDemo
//
//  Created by Багров Дмитрий on 01/12/2016.
//  Copyright © 2016 objectMapperDemo. All rights reserved.
//

import Foundation
import ObjectMapper

public class BaseModel: Mappable {
    
    // MARK: - Lifecycle
    
    public init() {
    }
    
    required public init?(map: Map){
    }
    
    public class func newInstance(map: Map) -> Mappable? {
        return BaseModel()
    }
    
    public func mapping(map: Map) {
    }
    
}

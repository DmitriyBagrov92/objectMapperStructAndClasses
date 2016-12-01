//
//  MappingService.swift
//  ObjectMapperDemo
//
//  Created by Багров Дмитрий on 01/12/2016.
//  Copyright © 2016 objectMapperDemo. All rights reserved.
//

import Foundation
import ObjectMapper

class MappingService {
    
    func map<T: Mappable>(from plist: String) -> [T]? {
        if let path = Bundle.main.path(forResource: plist, ofType: "plist") {
            let json =  NSArray(contentsOfFile: path)
            return Mapper<T>().mapArray(JSONObject: json)
        } else {
            return nil
        }
    }
    
    func immutableMap<T: ImmutableMappable>(from plist: String) throws -> [T] {
        if let path = Bundle.main.path(forResource: plist, ofType: "plist"), let json = NSArray(contentsOfFile: path) {
            return try Mapper<T>().mapArray(JSONObject: json)
        } else {
            return []
        }
    }
    
}

//
//  Person.swift
//  Query
//
//  Created by T Krobot on 6/8/26.
//

import Foundation
import SwiftData

@Model
class Persons {
    var name: String
    var subscribers: Int
    var location: String
    
    init(name: String, subscribers: Int, location: String) {
        self.name = name
        self.subscribers = subscribers
        self.location = location
    }
}

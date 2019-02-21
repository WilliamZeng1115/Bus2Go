//
//  Route.swift
//  Bus
//
//  Created by Test on 2019-02-20.
//  Copyright © 2019 Test. All rights reserved.
//

import Foundation

class Route: NSObject {
    var routeNo: Int?
    var name: String?
    var destination: String?
    var direction: String?
    
    init(routeNo: Int, name: String, destination: String, direction: String) {
        self.routeNo = routeNo
        self.name = name
        self.destination = destination
        self.direction = direction
    }
}

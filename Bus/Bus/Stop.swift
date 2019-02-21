//
//  Stop.swift
//  Bus
//
//  Created by Test on 2019-02-20.
//  Copyright © 2019 Test. All rights reserved.
//

import Foundation

class Stop: NSObject {
    var estimates: [Estimate]?
    var stopNo: Int?
    var name: String?
    var city: String?
    var lon: Decimal?
    var lat: Decimal?
    var distance: Double?
    var routes: [Route]?
    weak var annotation: Annotation?
    
    init(stopNo: Int, name: String, city: String, lon: Decimal, lat: Decimal, distance: Double, annotation: Annotation) {
        self.stopNo = stopNo
        self.name = name
        self.city = city
        self.lon = lon
        self.lat = lat
        self.distance = distance
        self.annotation = annotation
    }
    
    // Update the information displayed in the annotation when estimate is updated
    func updateEstimatesAndAnnotation() {
        // Stub
    }
}

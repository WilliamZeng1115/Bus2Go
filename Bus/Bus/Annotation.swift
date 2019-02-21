//
//  Annotation.swift
//  Bus
//
//  Created by Test on 2019-02-20.
//  Copyright © 2019 Test. All rights reserved.
//

import MapKit

class Annotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(title: String, subtitle: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }
}

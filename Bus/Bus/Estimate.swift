//
//  Estimate.swift
//  Bus
//
//  Created by Test on 2019-02-20.
//  Copyright © 2019 Test. All rights reserved.
//

import Foundation

class Estimate: NSObject {
    var expectedLeaveTime: String?
    var expectedCountDown: Int?
    var cancelledTrip: Bool?
    weak var stop: Stop?
    
    init(expectedLeaveTime: String, expectedCountDown: Int, cancelledTrip: Bool, stop: Stop) {
        self.expectedLeaveTime = expectedLeaveTime
        self.expectedCountDown = expectedCountDown
        self.cancelledTrip = cancelledTrip
        self.stop = stop
    }
}

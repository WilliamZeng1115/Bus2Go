//
//  TransLinkApi.swift
//  Bus
//
//  Created by Test on 2019-02-20.
//  Copyright © 2019 Test. All rights reserved.
//

import Foundation

class TransLinkApi: NSObject {
    
    let apiURI = "http://api.translink.ca/rttiapi/v1/"
    // for estimates you need to do stops/[stopNo]/estimates
    let apiTypes = ["stops", "estimates", "buses", "routes", "status"]
    var apiKey: String?
    
    init(apiKey: String) {
        self.apiKey = apiKey
    }
    
    // If radius is nil then just call the stops api for lat and lon
    // Else call the api for lat, lon, and radius
    // returns a list of stops within the radius
    func getStops(lat: Decimal, lon: Decimal, radius: Int?) -> [Stop] {
        // Stub
        let stops = [Stop]()
        return stops
    }
    
    func getRoutesForStop(stop: Stop) -> [Route] {
        // Stub
        let routes = [Route]()
        return routes
    }
    
    func getTimeArrivalForRouteAtStop(stop: Stop, timeFrame: Int, route: Route) {
        // Stub
        // store the estimates inside the stop
    }
}

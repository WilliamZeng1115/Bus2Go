//
//  ViewController.swift
//  Bus
//
//  Created by Test on 2019-02-19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    // Global Variables
    // Counter should be set to the largest expectedCountDown in the 3 estimates of a selected Stop
    var counter = 0
    // Selected Stop
    var stop: Stop? = nil
    // Selected Estimate
    var estimate: Estimate? = nil
    
    // Stub - put in ur own api key
    let apiManager = TransLinkApi(apiKey: "")
    let manager = CLLocationManager()
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        // First location will be the user's new location (current location)
        if let location = locations.first {
            // Static Variables
            let distance:CLLocationDegrees = 2000
            
            // Setting the map to location of User with a radius of 2000
            let centerCoord: CLLocationCoordinate2D = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
            let region: MKCoordinateRegion = MKCoordinateRegion(center: centerCoord, latitudinalMeters: distance, longitudinalMeters: distance)
            mapView.setRegion(region, animated: true)
            
            // EXAMPLE OF HOW TO DRAW ANNOTATIONS/Stops
            //let annotation = Annotation(title: "Current Position", subtitle: "Current Position", coordinate: centerCoord)
            //mapView.addAnnotation(annotation)
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == CLAuthorizationStatus.denied {
            showLocationDisabledPopup()
        }
    }
    
    func showLocationDisabledPopup() {
        let alertController = UIAlertController(title: "Location Access Disabled", message: "We need your location in order to find nearest bus stops", preferredStyle: .alert)
        
        let openAction = UIAlertAction(title: "Open Settings", style: .default) {
            (action) in if let url = URL(string: UIApplication.openSettingsURLString) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
        alertController.addAction(openAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)

        self.present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Will draw an annotation for current user
        mapView.showsUserLocation = true
        
        // Only request for location when the app is open
        manager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled() {
            manager.delegate = self
            manager.desiredAccuracy = kCLLocationAccuracyBest
            // Start updating the location therefore it will call any locationManager functions
            manager.startUpdatingLocation()
        }
    }
    
    
    // ====================== Display Helper Functions ==================================
    func convertDistanceToTime(speed: Double, distance: Double) -> Double {
        // Stub
        return 0
    }
    
    // Classify as 0 (red), 1 (yellow), 2 (green)
    func classifyEstimate(estimate: Estimate, timeToStop: Double) -> Int {
        // Stub
        return 0
    }

    // =========================== On Click Functions ==================================
    func onGroundClick() {
        // Stub
        self.stop = nil
        self.estimate = nil
        // set the counter to 0 and stop
        stopCounter()
    }
    
    func onStopClick(stop: Stop) {
        // Stub
        self.stop = stop
        updateEstimatesAtStop(stop: stop)
        // set the counter value to maximum countdown of the estimates in the stop
        startCounter(stop: stop)
    }
    
    func onEstimateSelect(estimate: Estimate) {
        // Stub
        self.estimate = estimate
        clearAllStopsExceptOne(stop: estimate.stop!)
        // Display the Count down from the estimate selected in the stop
        // Display the distance stored in stop and update the distance based on current position
    }
    
    func onConfirmPath() {
        // Stub
        // Confirms the selected Stop and Estimate and disable clicking ground
        // And initialize the displays
    }
    
    func onSearchForStops(lat: Decimal, lon: Decimal, radius: Int, routeNo: Int) -> [Stop] {
        // Stub
        let stops = [Stop]()
        return stops
    }
    
    // =========================== On Click Helper Functions ===========================
    func filterStopsForRouteSelected(stops: [Stop], routeNo: Int) -> [Stop] {
        // Stub
        // Hint: Use TranslinkApi.getRoutesForStop
        let stops = [Stop]()
        return stops
    }
    
    func updateEstimatesAtStop(stop: Stop) {
        // Stub
        // Let Stop call TransLinkApi update estimate and update annotation
    }
    
    func startCounter(stop: Stop) {
        // Stub
    }
    
    func stopCounter() {
        // Stub
    }

    func clearAllStopsExceptOne(stop: Stop) {
        // Stub
    }
}


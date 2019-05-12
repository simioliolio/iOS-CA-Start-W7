//
//  Location.swift
//  ThingsNearby
//
//  Created by Simon Haycock on 11/6/18.
//  Copyright © 2018 Expedia. All rights reserved.
//

import Foundation
import CoreLocation

class Location: NSObject {
    
    var current: CLLocationCoordinate2D?
    private let manager = CLLocationManager()
    
    override init() {
        
        super.init()
        
        manager.delegate = self
        
        let status = CLLocationManager.authorizationStatus()
        if status == .notDetermined {
            manager.requestWhenInUseAuthorization()
        }
    }
}

extension Location: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        
        if case .authorizedWhenInUse = status {
            manager.startUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        current = locations.first?.coordinate
    }
}

//
//  AnnotationPin.swift
//  VirtualTourist
//
//  Created by Amit Biswas on 5/20/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import Foundation
import MapKit

class AnnotationPin: MKPointAnnotation {
    var pin: Pin

    init(pin: Pin){
        self.pin = pin
        super.init()
        self.coordinate = CLLocationCoordinate2D(latitude: pin.latitude, longitude: pin.longitude)
    }
}

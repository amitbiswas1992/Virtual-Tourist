//
//  AlbumCollectionVC+MapView.swift
//  VirtualTourist
//
//  Created by Amit Biswas on 5/15/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import Foundation
import MapKit

extension AlbumCollectionViewController: MKMapViewDelegate {
       
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
           
           let reuseId = "pin"
           var pinView = mapView.dequeueReusableAnnotationView(withIdentifier: reuseId) as? MKPinAnnotationView
       

           if pinView == nil {
               pinView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: reuseId)
               pinView!.canShowCallout = false
               pinView!.pinTintColor = .red
            
           } else {
               pinView!.annotation = annotation
           }
           
           pinView?.isSelected = true
           pinView?.isUserInteractionEnabled = false
           return pinView
       }
    
    func setUpMapView() {
        mapView.delegate = self
        let span = MKCoordinateSpan(latitudeDelta:  0.015, longitudeDelta: 0.015)
        let coordinate = CLLocationCoordinate2D(latitude: pin.latitude, longitude: pin.longitude)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        mapView.setRegion(region, animated: true)
        mapView.addAnnotation(AnnotationPin(pin: pin))
    }
    
}

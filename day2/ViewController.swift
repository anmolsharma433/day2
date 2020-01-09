//
//  ViewController.swift
//  day2
//
//  Created by Anmol Sharma on 2020-01-09.
//  Copyright © 2020 anmol. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // define 1st lat and long
        let latitude : CLLocationDegrees = 30.9331
        let longitude : CLLocationDegrees = 74.610214
        
        //define delta Diff of lat and long
        let latDelta : CLLocationDegrees = 24.3588
        let longDelta : CLLocationDegrees = 36.7704
        
        //define span
        let span = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
        
        //Define Location
        let location = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        //define region
        let region = MKCoordinateRegion(center: location, span: span)
        
        //set region on mapView
        mapView.setRegion(region, animated: true)
        
        //adding annotation for the map
        let annotation = MKPointAnnotation()
        annotation.title = "Ferozepur"
        annotation.subtitle = "picho krde belong mitro Ferozpur shehar to."
        annotation.coordinate = location
        mapView.addAnnotation(annotation)
        
        //Long press Gesture
        let uiLogr = UILongPressGestureRecognizer(target: self, action: #selector(longPress))
        mapView.addGestureRecognizer(uiLogr)
    }
    
    @objc func longPress(gestureRecognizer : UILongPressGestureRecognizer)
    {
        let touchPoint = gestureRecognizer.location(in: mapView)
        let coordinator = mapView.convert(touchPoint, toCoordinateFrom: mapView)
        let annotation = MKPointAnnotation()
        annotation.title = "Lat \(coordinator.latitude) & long\(coordinator.longitude)"
        annotation.coordinate = coordinator
        mapView.addAnnotation(annotation)
    }


}


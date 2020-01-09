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
        let latitude : CLLocationDegrees = 43.64
        let longitude : CLLocationDegrees = -79.38
        
        //define delta Diff of lat and long
        let latDelta : CLLocationDegrees = 0.05
        let longDelta : CLLocationDegrees = 0.05
        
        //define span
        let span = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
        
        //Define Location
        let location = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        //define region
        let region = MKCoordinateRegion(center: location, span: span)
        
        //set region on mapView
        mapView.setRegion(region, animated: true)
    }


}


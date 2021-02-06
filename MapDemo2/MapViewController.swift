//
//  ViewController.swift
//  MapDemo2
//
//  Created by Administrator on 2/6/21.
//

import UIKit
import MapKit
import CoreLocation


class MapViewController: UIViewController {

    @IBOutlet weak var MyMapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    func checkLocationServices()  {
        
    }
    

}

extension MapViewController:CLLocationManagerDelegate
{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        // do something later
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        //do something later
    }
}


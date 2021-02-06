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
    
    func setupLocationManager() {
        locationManager.delegate=self
        locationManager.desiredAccuracy=kCLLocationAccuracyBest
    }
    
    func checkLocationServices()  {
        if CLLocationManager.locationServicesEnabled(){
            setupLocationManager()
        }
        else {
            //handle the location services not available
        }
    }
    
    func checkLocationAuthorization() {
        switch CLLocationManager.authorizationStatus()        {
        case .authorizedWhenInUse:
            // do mapstuff here
            break
        case .denied:
            // show alert that they need to go in settings
            break
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            break
        case .authorizedAlways:
            //do mapstuff here
            break
        @unknown default:
            break
        }   //switch
    }  //checklocationServices
    
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


//
//  MAMapVC.swift
//  Medical App
//
//  Created by eslam on 5/31/21.
//

import UIKit
import MapKit
import CoreLocation



class MAMapVC: UIViewController {

    
    let mapView = MKMapView()
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureNavigationView()
        configureMap()
        checkLocationServices()
        
        
    }
    

    
    
    func configureNavigationView(){
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneBtn
    }
    
    
    @objc func dismissVC(){
        
        navigationController?.popViewController(animated: true)

    }
    
    
    
    func configureMap(){
        
        view.addSubview(mapView)
        
        
        mapView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            mapView.topAnchor.constraint(equalTo: view.topAnchor),
            mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

        
        ])
        
        

    }
    
    
    
    
    
    
  
       
       func checkLocationServices() {
           if CLLocationManager.locationServicesEnabled() {
               setupLocationManager()
               checkLocationAuthorization()
           } else {
               // the user didn't turn it on
           }
       }
       

    
    
    
    
    
    
    
}



extension MAMapVC: CLLocationManagerDelegate{
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
           guard let location = locations.last else { return }
           let region = MKCoordinateRegion.init(center: location.coordinate, latitudinalMeters: 4000, longitudinalMeters: 4000)
           mapView.setRegion(region, animated: true)
       }
      
       func checkLocationAuthorization() {
           switch CLLocationManager.authorizationStatus() {
           case .authorizedWhenInUse:
               mapView.showsUserLocation = true
               followUserLocation()
               locationManager.startUpdatingLocation()
               break
           case .denied:
               // Show alert
               break
           case .notDetermined:
               locationManager.requestWhenInUseAuthorization()
           case .restricted:
               // Show alert
               break
           case .authorizedAlways:
               break
            
            
           @unknown default:
            break
           }
       }
    
    
    
    func followUserLocation() {
        if let location = locationManager.location?.coordinate {
            let region = MKCoordinateRegion.init(center: location, latitudinalMeters: 4000, longitudinalMeters: 4000)
            mapView.setRegion(region, animated: true)
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        checkLocationAuthorization()
    }
    
    func setupLocationManager() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
 
    
}

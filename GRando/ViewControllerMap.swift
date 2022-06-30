//
//  ViewControllerMap.swift
//  GRando
//
//  Created by galmamim on 01/06/2022.
//

import UIKit
import MapKit
import CoreLocation

class ViewControllerMap: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate{

    @IBOutlet weak var mapView: MKMapView!
  
    @IBAction func showLocalisation(_ sender: UIButton) {
        checkLocationServices()
    }
    
    //Le manager qui récupère la localisation du téléphone
    let manager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Dès l'ouverture de la map, on affiche la ville de Grenoble
        let coordinate = CLLocationCoordinate2D(latitude: 45.18785, longitude: 5.72310)
        let region = MKCoordinateRegion.init(center: coordinate, latitudinalMeters: 10000, longitudinalMeters: 10000)
        mapView.setRegion(region, animated: true)
        
        //Ajout des pins des positions des randonnées
        let lacAchard = CustomAnnotation()
        lacAchard.id = "id-1"
        lacAchard.coordinate = CLLocationCoordinate2D(latitude: 45.11321, longitude: 5.90139)
        lacAchard.title = "Lac Achard"
        mapView.addAnnotation(lacAchard)
        
        let croixPravouta = CustomAnnotation()
        croixPravouta.id = "id-2"
        croixPravouta.coordinate = CLLocationCoordinate2D(latitude: 45.31154, longitude: 5.83583)
        croixPravouta.title = "Croix de Pravouta"
        mapView.addAnnotation(croixPravouta)
        
        let monteynard = CustomAnnotation()
        monteynard.id = "id-3"
        monteynard.coordinate = CLLocationCoordinate2D(latitude: 44.86889, longitude: 5.70871)
        monteynard.title = "Passerelles de Monteynard"
        mapView.addAnnotation(monteynard)
        
        let picStMichel = CustomAnnotation()
        picStMichel.id = "id-4"
        picStMichel.coordinate = CLLocationCoordinate2D(latitude: 45.09178, longitude: 5.62119)
        picStMichel.title = "Croix du pic Saint-Michel"
        mapView.addAnnotation(picStMichel)
        
        //On exécute la fonction pour vérifier si les services d'autorization sont OK
        //checkLocationServices()
    }
    
    /*Vérification si les services d'autorization sont en marche
    Si c'est ok, on augmente la précision du GPS et on vérifie l'autorization de la localisation
    Sinon on re-vérifie les services d'autorization */
    func checkLocationServices(){
        if CLLocationManager.locationServicesEnabled(){
            manager.delegate = self
            manager.desiredAccuracy = kCLLocationAccuracyBestForNavigation
            checkLocationAuthorization()
        } else {
            checkLocationServices()
        }
    }
    
    /* Vérification de l'authorization de localisation
    Cas localisation autorisée : Commencer la recherche de la localisation
    Cas localisation refusée : On affiche un message d'alerte, il faut autoriser la localisation
    Cas Non déterminée : On re-check l'autorisation
    Cas Autorisation restreinte : On affiche un message d'alerte, il faut autoriser la localisation
    Cas Toujours autorisée : Pas de soucis
    Cas par défaut : Message d'alerte qu'il y a un soucis */
    func checkLocationAuthorization(){
        switch CLLocationManager.authorizationStatus() {
        case .authorizedWhenInUse:
            manager.startUpdatingLocation()
        case .denied:
            showAlert(title: "ALERTE !", message: "Vous devez autoriser la localisation GPS pour utiliser cette fonctionnalité.")
            break
        case .notDetermined:
            manager.requestWhenInUseAuthorization()
            break
        case .restricted:
            showAlert(title: "ALERTE !", message: "Vous devez autoriser la localisation GPS pour utiliser cette fonctionnalité.")
            break
        case .authorizedAlways:
            break
        @unknown default:
            showAlert(title: "ALERTE !", message: "Il y a un problème avec la localisation. Veuillez contacter le support informatique.")
            break
        }
        
    }
    
    //Re-vérification de l'autorisation
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        checkLocationAuthorization()
    }
    
    /*Cette fonction est exécutée quand on commence la recherche de la localisation
      A la première localisation trouvée, on arrête la recherche
     
     
     */
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            manager.stopUpdatingLocation()
            render(location)
        }
    }
    
    //Ajouter un pin de la localisation de l'utilisateur et zoomer dessus
    func render(_ location: CLLocation){
        let coordinate = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)

        let region = MKCoordinateRegion.init(center: coordinate, latitudinalMeters: 500, longitudinalMeters: 500)
        mapView.setRegion(region, animated: true)
        
        let positionPin = MKPointAnnotation()
        positionPin.coordinate = coordinate
        mapView.addAnnotation(positionPin)
    }
    
}

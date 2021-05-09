//
//  Maps.swift
//  ClimateChangeApp
//
//  Created by Parul Veda on 5/8/21.
//
import CoreLocation
import GoogleMaps
//import GooglePlaces
import SwiftUI

struct Maps: UIViewRepresentable {
    @ObservedObject var locationManager = LocationManager()
    private let zoom: Float = 15.0

    func makeUIView(context: Self.Context) -> GMSMapView {
        
        let camera = GMSCameraPosition.camera(withLatitude: locationManager.latitude, longitude: locationManager.latitude, zoom: zoom)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: locationManager.latitude, longitude: locationManager.longitude)
        marker.title = "San Francisco"
        marker.snippet = "California"
        marker.map = mapView
        
        return mapView
    }
        
    func updateUIView(_ mapView: GMSMapView, context: Context) {
//        let camera = GMSCameraPosition.camera(withLatitude: locationManager.latitude, longitude: locationManager.longitude, zoom: zoom)
//        mapView.camera = camera
        mapView.animate(toLocation: CLLocationCoordinate2D(latitude: locationManager.latitude, longitude: locationManager.longitude))
    }
    

}

struct Maps_Previews: PreviewProvider {
    static var previews: some View {
        Maps()
    }
}

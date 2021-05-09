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
//    var mapView : GMSMapView?
//    @ObservedObject var locationManager = LocationManager()
    private let zoom: Float = 5.0

    func makeUIView(context: Self.Context) -> GMSMapView {
        
        let camera = GMSCameraPosition.camera(withLatitude: 37.7749, longitude: -122.4194, zoom: zoom)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)
        marker.title = "San Francisco"
        marker.snippet = "California"
        marker.icon = GMSMarker.markerImage(with: .black)
        marker.map = mapView
        mapView.delegate = context.coordinator

        return mapView
    }
        
    func updateUIView(_ mapView: GMSMapView, context: Context) {
//        let camera = GMSCameraPosition.camera(withLatitude: locationManager.latitude, longitude: locationManager.longitude, zoom: zoom)
//        mapView.camera = camera
//        mapView.animate(toLocation: CLLocationCoordinate2D(latitude: locationManager.latitude, longitude: locationManager.longitude))
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(owner: self)
    }
    
    class Coordinator: NSObject, GMSMapViewDelegate {
        let owner: Maps       // access to owner view members,
        
        init(owner: Maps) {
            self.owner = owner
        }
        
        func mapView(_ mapView: GMSMapView, didTapAt coordinate: CLLocationCoordinate2D) {
            
//          print("You tapped at \(coordinate.latitude), \(coordinate.longitude)")
        }

    }

}

struct Maps_Previews: PreviewProvider {
    static var previews: some View {
        Maps()
    }
}

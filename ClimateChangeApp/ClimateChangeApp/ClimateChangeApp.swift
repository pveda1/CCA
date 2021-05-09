//
//  ClimateChangeAppApp.swift
//  ClimateChangeApp
//
//  Created by Parul Veda on 5/8/21.
//
import CoreLocation
import GoogleMaps
//import GooglePlaces
import SwiftUI

//private var apiKey: String {
//  get {
//    // 1
//    guard let filePath = Bundle.main.path(forResource: "keys", ofType: "plist") else {
//      fatalError("Couldn't find file 'keys.plist'.")
//    }
//    // 2
//    let plist = NSDictionary(contentsOfFile: filePath)
//    guard let value = plist?.object(forKey: "API_KEY") as? String else {
//      fatalError("Couldn't find key 'API_KEY' in 'keys.plist'.")
//    }
//    return value
//  }
//}

let API_Key = "AIzaSyAbtyQjSS28Y2WCfr0gYGSitUfK7etS5jI"

@main
struct ClimateChangeAppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            StartView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
     func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
         GMSServices.provideAPIKey(API_Key)
         //GMSPlacesClient.provideAPIKey(API_Key)
         return true
     }
}



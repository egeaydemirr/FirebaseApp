//
//  FirebaseAppApp.swift
//  FirebaseApp
//
//  Created by Ege Aydemir on 14.02.2023.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}


@main
struct FirebaseAppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
//    init(){
//        FirebaseApp.configure()
//    }
    
    var body: some Scene {
        DocumentGroup(newDocument: FirebaseAppDocument()) { file in
            ContentView()
        }
    }
}

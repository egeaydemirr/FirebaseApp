//
//  FirebaseAppApp.swift
//  FirebaseApp
//
//  Created by Ege Aydemir on 14.02.2023.
//

import SwiftUI

@main
struct FirebaseAppApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: FirebaseAppDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}

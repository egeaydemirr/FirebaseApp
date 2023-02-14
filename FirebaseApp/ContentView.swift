//
//  ContentView.swift
//  FirebaseApp
//
//  Created by Ege Aydemir on 14.02.2023.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: FirebaseAppDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(FirebaseAppDocument()))
    }
}

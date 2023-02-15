//
//  KullaniciModel.swift
//  FirebaseApp
//
//  Created by Ege Aydemir on 14.02.2023.
//

import Foundation

struct Kullanici: Identifiable {
    var id = UUID()
    var kullaniciAdi: String
    var adSoyad: String
}

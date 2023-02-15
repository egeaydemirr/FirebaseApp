//
//  DataCekme.swift
//  FirebaseApp
//
//  Created by Ege Aydemir on 15.02.2023.
//

import Foundation
import Firebase

class veriModeli : ObservableObject {
    @Published var kullanicilar = [Kullanici]()
    
    func veriCekme(){
        let database = Firestore.firestore()
        
        database.collection("kullanicilar").getDocuments { snapshot, error in
            if error == nil{
                //HATA ALINMADIYSA
            }
            else {
                //HATA VARSA
            }
        }
    }
}

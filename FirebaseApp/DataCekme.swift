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
                if let snapshot = snapshot {
                    DispatchQueue.main.async {
                        self.kullanicilar = snapshot.documents.map({veriler in
                            return Kullanici(kullaniciAdi: veriler["kullaniciAdi"] as! String , adSoyad: veriler["adSoyad"] as! String )
                        })
                    }
                }
            }
            else {
                //HATA VARSA
            }
        }
    }
}

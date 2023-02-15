//
//  ContentView.swift
//  FirebaseApp
//
//  Created by Ege Aydemir on 14.02.2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var veriSinifi = veriModeli()

    var body: some View {
        NavigationView(){
            List(veriSinifi.kullanicilar){ item in
                VStack {
                    HStack{
                        Spacer()
                    Text("Ad Soyad:")
                            .padding()
                        Spacer()
                        Text(item.adSoyad)
                        Spacer()
                    }
                    HStack{
                        Spacer()
                    Text("Kullanici Adi:")

                        Spacer()
                        Text(item.kullaniciAdi)
                        Spacer()
                    }

                }
            }
        }
    }
    
    
    init(){
        veriSinifi.veriCekme()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

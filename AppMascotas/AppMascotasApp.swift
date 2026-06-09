//
//  AppMascotasApp.swift
//  AppMascotas
//
//  Created by user295757 on 6/7/26.
//

import SwiftUI

@main
struct PetAdoptApp: App {
    
    @AppStorage("modoOscuro") var modoOscuro: Bool = false

    var body: some Scene {
        WindowGroup {
            NavigationStack {
                SplashView()
                    .preferredColorScheme(modoOscuro ? .dark : .light)
            }
        }
    }
}

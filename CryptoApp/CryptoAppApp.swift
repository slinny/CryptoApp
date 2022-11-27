//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Siran Li on 11/25/22.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}

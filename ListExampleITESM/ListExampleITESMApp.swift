//
//  ListExampleITESMApp.swift
//  ListExampleITESM
//
//  Created by Luis Javier Carranza on 25/03/21.
//

import SwiftUI
import Firebase


@main
struct ListExampleITESMApp: App {

    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            CountryListView()
        }
    }
}

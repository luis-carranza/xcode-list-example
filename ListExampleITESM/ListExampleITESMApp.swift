//
//  ListExampleITESMApp.swift
//  ListExampleITESM
//
//  Created by Luis Javier Carranza on 25/03/21.
//

import SwiftUI

@main
struct ListExampleITESMApp: App {
    
    @ObservedObject var countryController = CountryViewController()
    
    var body: some Scene {
        WindowGroup {
            CountryListView()
        }
    }
}

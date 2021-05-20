//
//  CountryViewController.swift
//  ListExampleITESM
//
//  Created by Luis Javier Carranza on 25/03/21.
//

import Foundation
import SwiftUI

class CountryViewController {
    
     var countryModelData: [CountryModel]
    
    init() {
        // Let' incllude some inital Data to the Data model.
        self.countryModelData = [
            CountryModel(id: UUID(), countryName: "Mexico", population: "200M"),
            CountryModel(id: UUID(), countryName: "USA", population: "500M"),
            CountryModel(id: UUID(), countryName: "Colombia", population: "100M")
        ]
    }
    
    func addCountry(country: CountryModel) {
        self.countryModelData.append(country)
    }
    
    func getCountries() -> [CountryModel] {
        return countryModelData
    }
}

//
//  CountryDetailView.swift
//  ListExampleITESM
//
//  Created by Luis Javier Carranza on 25/03/21.
//

import SwiftUI

struct CountryDetailView: View {
    
    let country: CountryModel
    
    var body: some View {
        Text(country.countryName + "  ->  Population: " + country.population)
            .navigationBarTitle(country.countryName)
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView(country: CountryModel(id: UUID(), countryName: "Canada", population: "400M"))
    }
}

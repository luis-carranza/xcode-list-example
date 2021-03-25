//
//  CountryListView.swift
//  ListExampleITESM
//
//  Created by Luis Javier Carranza on 25/03/21.
//

import SwiftUI

struct CountryListView: View {
    
    //Inject the Country Model depenendency
    var countryController = CountryViewController()
    
    
    var body: some View {
        NavigationView {
            
            List(countryController.countryModelData) { country in
                NavigationLink(
                    destination: CountryDetailView(country: country),
                    label: {
                        Text(country.countryName)
                    })
            }
            .navigationBarTitle("Countries")
        }
    }
}

struct CountryListView_Previews: PreviewProvider {
    static var previews: some View {
        CountryListView()
    }
}

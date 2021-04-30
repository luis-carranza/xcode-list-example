//
//  CountryListView.swift
//  ListExampleITESM
//
//  Created by Luis Javier Carranza on 25/03/21.
//

import SwiftUI

struct CountryListView: View {
    
    //Inject the Country Model depenendency
    @ObservedObject var countryController = CountryViewController()
    
    
    var body: some View {
        NavigationView {
            
            List(countryController.countryModelData) { country in
                NavigationLink(
                    destination: CountryDetailView(country: country),
                    label: {
                        Text(country.countryName)
                    })
   
            }
            .navigationBarTitle("Countries", displayMode: .inline)
            .navigationBarItems(
                trailing:
                    Button(action: {
                        print("button pressed")
                        
                        countryController.addCountry(country: CountryModel(id: UUID(), countryName: "China", population: "1000M"))
                    }) {
                        Image(systemName: "plus")
                        //Text("add")
                    }
            )
  
        }
    }
}

struct CountryListView_Previews: PreviewProvider {
    static var previews: some View {
        CountryListView()
    }
}

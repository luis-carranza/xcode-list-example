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
   
    @State var isPresented: Bool = false
    
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
            
                    NavigationLink(
                        destination: AddCityView(countryController: $countryController.countryModelData),
                        label: {
                            Image(systemName: "plus")
                        })
            )
  
        }
    }
}

struct CountryListView_Previews: PreviewProvider {
    static var previews: some View {
        CountryListView()
    }
}

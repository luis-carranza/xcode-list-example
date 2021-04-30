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
                    Button(action: {
                        print("button pressed")
                        isPresented.toggle()
                        countryController.addCountry(country: CountryModel(id: UUID(), countryName: "China", population: "1000M"))
                    }) {
                        Image(systemName: "plus")
                        //Text("add")
                    }
                    .fullScreenCover(isPresented: $isPresented, content:
                        AddCityView.init
                    )
            )
  
        }
    }
}

struct CountryListView_Previews: PreviewProvider {
    static var previews: some View {
        CountryListView()
    }
}

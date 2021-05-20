//
//  CountryListView.swift
//  ListExampleITESM
//
//  Created by Luis Javier Carranza on 25/03/21.
//

import SwiftUI

struct CountryListView: View {
    
    //Inject the Country Model depenendency
    @State var countryController = CountryViewController()
   
    @State var isPresented: Bool = false
    
    var body: some View {
        NavigationView {
            
            List{
                ForEach(countryController.countryModelData){
                    country in
                    NavigationLink(
                        destination: CountryDetailView(country: country),
                        label: {
                            Text(country.countryName)
                        })//Navigation Link
                }.onDelete(perform: deleteItem)
               
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
    
    //MARK:  DELETE METHID
    private func deleteItem(at indexSet: IndexSet){
        self.countryController.countryModelData.remove(atOffsets: indexSet)
    }
}

struct CountryListView_Previews: PreviewProvider {
    static var previews: some View {
        CountryListView()
    }
}

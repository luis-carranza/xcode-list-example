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
        
        ZStack { 
            
            Image("Canada")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .blur(radius: 7.0)
            VStack {
                Text(country.countryName).font(.largeTitle).foregroundColor(.white)
                Text(country.population).font(.title).foregroundColor(.white)
            }
        }// ZStack
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView(country: CountryModel(id: UUID(), countryName: "Canada", population: "400M"))
    }
}

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
            
            Image("Mexico")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .overlay(
                    CountryText(country: country.countryName, population: country.population), alignment: .center)
        }// ZStack
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView(country: CountryModel(id: UUID(), countryName: "Canada", population: "400M"))
    }
}

struct CountryText: View {
    
    let country: String
    let population: String
    var body: some View {
        ZStack {
            VStack {
                Text(country)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 6)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                
                
                Text("Population: " + population)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 6)
                    .foregroundColor(.white)
                    .font(.callout)
            }
            
        }.background(Color.black)
        .opacity(0.8)
        .cornerRadius(6)
        .padding(10)
        
    }
}

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

        ZStack(alignment: .bottom) {
                
                Image(country.image ?? "Mexico")
                    .resizable()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Rectangle()
                    .frame(height: 170.0)
                    .fixedSize(horizontal: false, vertical: true)
                    .foregroundColor(.black)
                    .background(Color.black)
                    .opacity(0.3)
                    .cornerRadius(9.0)
                    .edgesIgnoringSafeArea(.bottom)
                    
                    
                VStack (alignment: .center) {
                    Text(country.countryName)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding(.bottom, 20)
                    
                    Text("Population:\n\(country.population)")
                        .font(.title2)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center
                    )
                }.padding()
             
            }
        
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView(country: CountryModel(id: UUID(), countryName: "Canada", population: "400M", image: "Canada"))
    }
}

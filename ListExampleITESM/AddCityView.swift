//
//  AddCityView.swift
//  ListExampleITESM
//
//  Created by Luis Javier Carranza on 30/04/21.
//

import SwiftUI

struct AddCityView: View {
    
    @Binding var countryController:  [CountryModel]
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var cityName:String = ""
    @State var population:String = ""
    
    var body: some View {
        
            VStack{
                
                TextField("Enter a city Name ",text: $cityName)
                    .padding(10)
                    .font(Font.system(size: 15, weight: .medium, design: .serif))
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1))
                    .padding(.horizontal, 20)
                    .padding(.bottom, 30)
                
                TextField("Enter population ",text: $population)
                    .padding(10)
                    .font(Font.system(size: 15, weight: .medium, design: .serif))
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1))
                    .padding(.horizontal, 20)
                    .padding(.bottom, 80)
               
                HStack {
                    //MARK: Dismiss Button (Cancel)
                    Button("Cancel") {
                        presentationMode.wrappedValue.dismiss()
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(10)
                    .padding(.horizontal, 25)
                
                    
                    //MARK: Add New city Button
                    Button("Add City") {
                        if(cityName != "" && population != "") {
                           countryController.append(CountryModel(id: UUID(), countryName: cityName, population: population))
                        }
                        presentationMode.wrappedValue.dismiss()
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.horizontal, 25)
                }// HSTACK
            }//VStack
            .navigationBarTitle(Text("Add New Country"), displayMode: .inline)
            .navigationBarBackButtonHidden(true)
    }
}

struct AddCityView_Previews: PreviewProvider {

    static var data: [CountryModel] = [
        CountryModel(id: UUID(), countryName: "Mexico", population: "200M"),
        CountryModel(id: UUID(), countryName: "USA", population: "500M"),
        CountryModel(id: UUID(), countryName: "Colombia", population: "100M")
    ]
    
    static var previews: some View {
        AddCityView(countryController:.constant(data))
    }
}

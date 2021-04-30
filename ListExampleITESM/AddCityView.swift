//
//  AddCityView.swift
//  ListExampleITESM
//
//  Created by Luis Javier Carranza on 30/04/21.
//

import SwiftUI

struct AddCityView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        Button("Dismiss Modal") {
            presentationMode.wrappedValue.dismiss()
        }
    }
}

struct AddCityView_Previews: PreviewProvider {
    static var previews: some View {
        AddCityView()
    }
}

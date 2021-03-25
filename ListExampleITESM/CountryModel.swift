//
//  CountryModel.swift
//  ListExampleITESM
//
//  Created by Luis Javier Carranza on 25/03/21.
//

import Foundation
import SwiftUI

struct CountryModel: Identifiable, Hashable {
    var id: UUID
    var countryName: String
    var population: String
    
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

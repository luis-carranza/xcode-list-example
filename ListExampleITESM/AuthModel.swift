//
//  AuthModel.swift
//  ListExampleITESM
//
//  Created by Luis Javier Carranza on 19/05/21.
//

import Foundation

struct User: Identifiable, Hashable {
    
    var id: UUID
    var userName: String
    var userMail: String
    
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
}

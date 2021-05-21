//
//  SignupView.swift
//  ListExampleITESM
//
//  Created by Luis Javier Carranza on 19/05/21.
//

import SwiftUI

struct SignupView: View {
    
    @State var userName: String = ""
    @State var userPassword: String = ""
    
    var body: some View {
        VStack {
            
            Text("Welcome to Country List")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center
                )
            Text("This is a samople app for the Mobile apps Development class.  ")
                .multilineTextAlignment(.center)
                .padding(.bottom, 30)
                .foregroundColor(.gray)
            
            Text("Create you Account")
                .font(.title)
                .padding()

            
            // MARK: email buttomn
            HStack {
                Image(systemName: "person").foregroundColor(.gray)
                TextField("email", text: $userName)
                
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1))
            
            // MARK: Password buttomn
            HStack {
                Image(systemName: "lock").foregroundColor(.gray)
                SecureField("password", text: $userPassword)
                
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1))
            .padding(.bottom, 30)
            
            
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Submit")
            }
            .padding(.all)
            .padding(.horizontal)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(7.0)
            
            
            Text("or if you don'r have an account \nSign up")
                .padding(.top, 50)
                .multilineTextAlignment(.center
                )
            
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .ignoresSafeArea()
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}

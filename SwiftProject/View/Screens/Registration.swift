//
//  Registration.swift
//  SwiftProject
//
//  Created by MacLab7 on 11.6.23..
//

import SwiftUI

struct Registration: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var password2: String = ""

    var body: some View {
        NavigationView{
            VStack {
                Spacer()
                
                HStack(){
                    Spacer()
                    Text("Registration Form").font(.largeTitle).foregroundColor(Color(.black))
                    Spacer()

                }
                Spacer()
                TextField("Name", text: $name)
                    .frame(height: 4.0)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                SecureField("RepeatPassword", text: $password2)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button(action: {
                    // Perform form submission or validation here
                    submitForm()
                }) {
                    Text("Submit")
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 200.0)
                        .background(Color.black)
                        .cornerRadius(12)
                }
                .padding()
                Spacer()
                
            }
            .padding()
        }.navigationTitle("Registration")
    }



func submitForm() {
      // Perform form submission or validation logic here
      print("Name: \(name)")
      print("Email: \(email)")
      print("Password: \(password)")
  }
}

struct Registration_Previews: PreviewProvider {
    static var previews: some View {
        Registration()
    }
}

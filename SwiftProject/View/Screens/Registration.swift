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
                    fetch()
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

//
    func fetch() {
        var responseText = ""
        print("Here")
        guard let url = URL(string: "https://localhost:7172/api/User/Test") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                if let error = error {
                    print("Error: \(error)")
                }
                return
            }
            
            if let responseString = String(data: data, encoding: .utf8) {
                DispatchQueue.main.async {
                    responseText = responseString
                }
                print(responseText)

            }
            print(responseText)
        }
        
        task.resume()
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

//
//  Login.swift
//  SwiftProject
//
//  Created by MacLab7 on 17.6.23..
//

import SwiftUI

struct Login: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        NavigationView{
            VStack {
                Spacer()
                
                HStack(){
                    Spacer()
                    Text("Login Form").font(.largeTitle).foregroundColor(Color(.black))
                    Spacer()
                    
                }
                Spacer()
                
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button(action: {
                    // Perform form submission or validation here
                    LoginUser()
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
        }.navigationTitle("Login")
    }
        func submitForm(){
            print("Klik");
        }
    
    func LoginUser() {
        guard let url = URL(string: "https://localhost:7172/api/User/LogIn") else {
            return
        }

        let parameters = [
            "email": email,
            "password": password
        ]

        guard let postData = try? JSONSerialization.data(withJSONObject: parameters) else {
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = postData

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            // Handle the response
            print(response ??  "nesto")
        }
        
        task.resume()
    }
}
    


struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
        
        
    }
    

}

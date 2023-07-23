//
//  LoginView.swift
//  swift_todo
//
//  Created by alxayeed on 23/7/23.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationView{
            VStack{
                HeaderView()
                // Form
                Form{
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("What's the key?", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    Button {
                        // log in
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            Text("Log in")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }.padding()
                }
                
                // Sign Up Navigation
                VStack{
                    Text("New around here?")
                    NavigationLink("Create an account", destination: RegisterView())
                }.padding(.bottom, 50)
                
                Spacer()
            }
            .ignoresSafeArea(.keyboard)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

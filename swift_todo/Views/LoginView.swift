//
//  LoginView.swift
//  swift_todo
//
//  Created by alxayeed on 23/7/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                HeaderView(title: "Todo List",
                           subtitle: "What's on your mind?",
                           angle: 15,
                           backgroundColor: Color.pink
                )
                // Form
                Form{
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    SecureField("What's the key?", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log in", backgroundColor: Color.blue){
                        viewModel.login()
                    }
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

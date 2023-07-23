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
                HeaderView(title: "Todo List",
                           subtitle: "What's on your mind?",
                           angle: 15,
                           backgroundColor: Color.pink
                )
                // Form
                Form{
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("What's the key?", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log in", backgroundColor: Color.blue){
                        //login action
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

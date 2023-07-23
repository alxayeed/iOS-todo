//
//  RegisterView.swift
//  swift_todo
//
//  Created by alxayeed on 23/7/23.
//

import SwiftUI

struct RegisterView: View {
    @State var fullName = ""
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack{
            HeaderView(title: "Register",
                       subtitle: "Start organizing things!",
                       angle: 15,
                       backgroundColor: Color.orange)
            
            // Form
            Form{
                TextField("Full Name", text: $fullName)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Register", backgroundColor: Color.green){
                    // register action
                }
            }.padding(.bottom, -20)
            
            
            
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

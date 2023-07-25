//
//  ProfileView.swift
//  swift_todo
//
//  Created by alxayeed on 23/7/23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                if let user = viewModel.user {
                    profile(user: user)
                } else {
                    Text("Loading...")
                }
                
                
                Button{
                    viewModel.logout()
                } label: {
                    Text("Log out")
                }
                .foregroundColor(Color.red)
                .padding()
            
                Spacer()
            }.navigationTitle("Profile")
                .onAppear{
                    viewModel.fetchUserData()
                }
        }
        
    }
    @ViewBuilder
    func profile(user: UserModel)-> some View {
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(Color.blue)
            .frame(width: 125, height: 125)
        
        VStack(alignment: .leading){
            HStack{
                Text("Name: ").bold()
                Text(user.name)
            }.padding(.top, 15)
            HStack{
                Text("Email: ").bold()
                Text(user.email)
            }.padding(.top,5)
            HStack{
                Text("Member Since: ").bold()
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .omitted))")
            }.padding(.top,5)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

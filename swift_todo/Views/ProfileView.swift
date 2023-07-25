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
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.blue)
                    .frame(width: 125, height: 125)
                
                VStack(alignment: .leading){
                    HStack{
                        Text("Name: ")
                        Text("Al Sayeed")
                    }.padding(.top, 15)
                    HStack{
                        Text("Email: ")
                        Text("Al Sayeed")
                    }.padding(.top,5)
                    HStack{
                        Text("Member since: ")
                        Text("Al Sayeed")
                    }.padding(.top,5)
                }
                Button{
                    viewModel.logout()
                } label: {
                    Text("Log out")
                }
                .foregroundColor(Color.red)
                .padding()
            
                Spacer()
            }
                .navigationTitle("Profile")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

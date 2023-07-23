//
//  HeaderView.swift
//  swift_todo
//
//  Created by Bizzntek Ltd on 23/7/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.pink)
                .rotationEffect(Angle.degrees(15))
            VStack{
                Text("Todo List")
                    .font(.system(size: 40))
                    .foregroundColor(Color.white)
                    .fontWeight(Font.Weight.bold)
                
                Text("What's on your mind?")
                    .font(.system(size: 20))
                    .foregroundColor(Color.white)
            }.padding(.top, 30)
            
            
            Spacer()
                
        }.frame(
            width: UIScreen.main.bounds.width * 2,
            height: 300)
        .offset(y: -120)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}

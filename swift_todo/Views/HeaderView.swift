//
//  HeaderView.swift
//  swift_todo
//
//  Created by Bizzntek Ltd on 23/7/23.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let backgroundColor: Color
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(backgroundColor)
                .rotationEffect(Angle.degrees(angle))
            VStack{
                Text(title)
                    .font(.system(size: 40))
                    .foregroundColor(Color.white)
                    .fontWeight(Font.Weight.bold)
                
                Text(subtitle)
                    .font(.system(size: 20))
                    .foregroundColor(Color.white)
            }.padding(.top, 80)
            
            
            Spacer()
                
        }.frame(
            width: UIScreen.main.bounds.width * 2,
            height: 300)
        .offset(y: -150)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(
            title: "Title",
            subtitle: "Subtitle",
            angle: 15,
            backgroundColor: Color.blue
        )
    }
}

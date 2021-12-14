//
//  Screen6.swift
//  WaterBalance
//
//  Created by Yessenali Zhanaidar on 13.12.2021.
//

import SwiftUI

struct Screen6: View {
    
    var body: some View {
        VStack{
            Text("TODAY")
                .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                .font(.system(size: 17))
                .italic()
                .fontWeight(.black)
                .frame(maxWidth: .infinity)
            HStack{
                Text("250 ml")
                Spacer()
                Text("12:13")
                    .foregroundColor(.gray)
            }.padding(EdgeInsets(top: 41, leading: 16, bottom: 16, trailing: 16))
            Divider().opacity(0.5)
            HStack{
                Text("200 ml")
                Spacer()
                Text("14:10")
                    .foregroundColor(.gray)
            }.padding()
            Divider().opacity(0.5)
            HStack{
                Text("50 ml")
                Spacer()
                Text("15:13")
                    .foregroundColor(.gray)
            }.padding()
            Divider().opacity(0.5)
            HStack{
                Text("300 ml")
                Spacer()
                Text("19:10")
                    .foregroundColor(.gray)
            }.padding()
            Divider().opacity(0.5)
            Spacer().frame(height: 370)
        }
    }
}

struct Screen6_Previews: PreviewProvider {
    static var previews: some View {
        Screen6()
    }
}

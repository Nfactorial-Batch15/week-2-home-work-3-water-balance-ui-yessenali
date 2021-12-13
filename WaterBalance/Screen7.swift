//
//  Screen7.swift
//  WaterBalance
//
//  Created by Yessenali Zhanaidar on 13.12.2021.
//

import SwiftUI

struct Screen7: View {
    var body: some View {
        VStack{
            Text("EDIT")
                .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                .font(.system(size: 17))
                .italic()
                .fontWeight(.black)
                .frame(maxWidth: .infinity)
                .padding()
            HStack{
                Text("Daily Intake Level")
                Spacer()
                Text("2400 ML")
                    .foregroundColor(.gray)
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
                    .opacity(0.5)
            }.padding(EdgeInsets(top: 41, leading: 16, bottom: 16, trailing: 16))
            Divider().opacity(0.5)
            HStack{
                Text("Your goal")
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
                    .opacity(0.5)
            }.padding()
            Divider().opacity(0.5)
            HStack{
                Text("Reminder")
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
                    .opacity(0.5)
            }.padding()
            Divider().opacity(0.5)
            Spacer()
        }
    }
}

struct Screen7_Previews: PreviewProvider {
    static var previews: some View {
        Screen7()
    }
}

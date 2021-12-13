//
//  Screen15.swift
//  WaterBalance
//
//  Created by Yessenali Zhanaidar on 13.12.2021.
//

import SwiftUI

struct Screen15: View {
    var body: some View {
        
        VStack(alignment: .center, spacing: 0) {
                HStack{
                    Button(action: {}) {
                        Image(systemName: "chevron.left")
                    }
                    
                    Text("REMINDER")
                    .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                    .font(.system(size: 17))
                    .italic()
                    .fontWeight(.black)
                    .frame(maxWidth: .infinity)
                    .padding(.trailing, 20)
                }.padding(.top, 68)
            Text("Remind me each")
                .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
                .font(.system(size: 36))
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                .padding(.top, 132)
            
            VStack(alignment: .center, spacing: 10) {
                ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(Color(red: 212/255, green: 225/255, blue: 248/255))
                    blockGrid
                }
                .frame(height: 330)
                .padding(.top, 32)
            }
            Spacer()
            VStack{
                SaveButton()
                    .padding(.bottom, 50)
            }

        }
        .padding([.leading, .trailing], 16)
        .background(Color(red: 252/255, green: 253/255, blue: 255/255).edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
    }
}





struct Screen15_Previews: PreviewProvider {
    static var previews: some View {
        Screen15()
    }
}


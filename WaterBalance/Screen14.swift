//
//  Screen14.swift
//  WaterBalance
//
//  Created by Yessenali Zhanaidar on 13.12.2021.
//

import SwiftUI

struct Screen14: View {
    var body: some View {

        VStack(alignment: .center, spacing: 0) {
            
            VStack{
                HStack{
                    Button(action: {}) {
                        Image(systemName: "chevron.left")
                    }
                    
                    Text("THE GOAL")
                    .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                    .font(.system(size: 17))
                    .italic()
                    .fontWeight(.black)
                    .frame(maxWidth: .infinity)
                    .padding(.trailing, 20)
                }.padding(.top, 68)
            }
            Spacer()
            VStack(alignment: .center, spacing: 0) {
            Text("What is your goal?")
                .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
                .font(.system(size: 36))
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                .padding(.top, 132)

            GoalViews()
                .padding(.top, 32)

            Spacer()
            SaveButton()
                .padding(.bottom, 50)

            }
        }
        .padding([.leading, .trailing], 16)
        .background(Color(red: 252/255, green: 253/255, blue: 255/255).edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
    }
}



struct CustomButtons: View {
    var body: some View {
        Button {
            print("Next button was pressed")
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(Color(red: 24/255, green: 104/255, blue: 253/255))
                Text("Next")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
            }
            .frame( height: 60)
        }

    }
}

struct Screen14_Previews: PreviewProvider {
    static var previews: some View {
        Screen14()
    }
}



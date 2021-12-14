//
//  Screen3.swift
//  WaterBalance
//
//  Created by Yessenali Zhanaidar on 12.12.2021.
//

import SwiftUI

struct Screen3: View {
    @State private var name: String = "2400"
    var body: some View {
    VStack{
        HStack{
            Button(action: {}) {
                Image(systemName: "chevron.left")
            }
            .padding(.bottom, 20)
            Text("WATER BALANCE")
            .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
            .font(.system(size: 24))
            .italic()
            .fontWeight(.black)
            .frame(maxWidth: .infinity)
            .padding(EdgeInsets(top: 80, leading: 0, bottom: 0, trailing: 20))
        }
        Text("Daily intake?")
            .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
            .font(.system(size: 36))
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity)
            .padding(.top, 62)
            VStack(alignment: .center, spacing: 10) {
                ZStack {
                    RoundedRectangle(cornerRadius: 16)
                        .foregroundColor(Color(red: 212/255, green: 225/255, blue: 248/255))
                    HStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 16)
                                .foregroundColor(Color(red: 252/255, green: 253/255, blue: 255/255))
                                .frame(width: 250,height: 60)
                            HStack{
                                TextField("value", text: $name)
                                    .foregroundColor(.blue)
                                    .font(.system(size: 16, weight: .semibold))
                                    .keyboardType(.numberPad)
                                
                            }.frame(width: 40)
                        }
                        Text("ML")
                            .padding()
                    }
                }
                .frame(height: 108)
                
            }
            Spacer()
            SaveButton()
                .padding(.bottom, 50)
        }
        .padding([.leading, .trailing], 16)
    }
}

struct SaveButton: View {
    var body: some View {
        Button {
            print("Next button was pressed")
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(Color(red: 24/255, green: 104/255, blue: 253/255))
                Text("Save")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
            }
            .frame( height: 60)
        }

    }
}


struct Screen3_Previews: PreviewProvider {
    static var previews: some View {
        Screen3()
    }
}

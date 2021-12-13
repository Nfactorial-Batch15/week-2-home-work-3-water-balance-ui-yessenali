//
//  TestRadioButton.swift
//  WaterBalance
//
//  Created by Yessenali Zhanaidar on 12.12.2021.
//

import SwiftUI

struct TestRadioButtonView: View {
    var body: some View {
        ZStack{
            VStack {
                Spacer()
                VStack{
                Text("WATER BALANCE")
                    .italic()
                    .font(.system(size: 24))
                    .fontWeight(.black)
                    .foregroundColor(Color("Color1"))
                    .frame(width: 358, height: 40, alignment: .center)
                }
                Spacer().frame(height: 62)
            VStack{
                    Text("What is your goal?")
                        .font(.system(size: 36))
                        .fontWeight(.semibold)
                    
                }
                Spacer().frame(height: 32)
            VStack{
                    ZStack{
                    Rectangle()
                        .fill(.blue.opacity(0.2))
                        //.frame(width: 352, height: 330, alignment: .center)
                        .cornerRadius(16)
                    RadioButtons()
                    }
                    .frame(width: 352, height: 330, alignment: .center)
                }
                Spacer().frame(height: 116)
            VStack{
                    Button(action: {
                        
                    }) {
                        ZStack{
                            Rectangle()
                                .frame(width: 358, height: 60)
                                .cornerRadius(16)
                            Text("Next")
                                .foregroundColor(.white)
                                .font(.system(size: 22))
                                .fontWeight(.bold)
                        }
                    }
                }
                
            }
        }
    }
}

struct RadioButtons: View {
    var body: some View {
        VStack(alignment: .center, spacing: 14){
            ForEach(data, id: \.self) { i in
                Button(action: {

                }) {

                    HStack {
                        Text(i).font(.system(size: 15, weight: .semibold))
                        Spacer()
                        Circle()
                            .fill(Color.blue.opacity(0.1))
                            .frame(width: 20, height: 20)
                    }
                    .padding(.horizontal,24)
                    .foregroundColor(.black)
                }.frame(width: 320, height: 60)

                .background(Color.white)
                .cornerRadius(16)
            }
        }.padding(.vertical, 19)
            .padding(.horizontal, 24)
    }
}

var data = ["Goal Number One","Goal Number Two","Goal Number Three","Goal Number Four"]


struct TestRadioButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TestRadioButtonView()
    }
}

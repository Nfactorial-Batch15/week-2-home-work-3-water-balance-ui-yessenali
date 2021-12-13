//
//  Screen2.swift
//  WaterBalance
//
//  Created by Yessenali Zhanaidar on 12.12.2021.
//

import SwiftUI

struct Screen2: View {
    var body: some View {
        
        VStack(alignment: .center, spacing: 0) {
            HStack{
            Button(action: {}) {
                Image(systemName: "chevron.left")
            }
           
            Text("WATER BALANCE")
                .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                .font(.system(size: 24))
                .italic()
                .fontWeight(.black)
                .frame(maxWidth: .infinity)
                .padding(EdgeInsets(top: 108, leading: 0, bottom: 0, trailing: 20))
            }
            Text("What is your goal?")
                .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
                .font(.system(size: 36))
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                .padding(.top, 62)
            
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
                CustomButton()
                    .padding(.bottom, 50)
            }

        }
        .padding([.leading, .trailing], 16)
        .background(Color(red: 252/255, green: 253/255, blue: 255/255).edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
    }
}


var blockGrid: some View {
    ZStack{
        VStack{
            VStack {
                HStack {
                    
                    ZStack{
                        box
                        Text("15 minutes")
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                    }
                    ZStack{
                        box
                        Text("30 minutes")
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                    }
                }
            }
            VStack{
                HStack {
                    ZStack{
                        box
                        Text("45 minutes")
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                    }
                    ZStack{
                        box
                        Text("1 hours")
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                    }
                }
            }
        VStack{
                HStack {
                    ZStack{
                        box
                            .background(Color.blue)
                            .cornerRadius(20)
                        Text("1,5 hours")
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                            .foregroundColor(.blue)
                    }
                    ZStack{
                        box
                        Text("2 hours")
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                    }
                }
            }
        VStack{
                HStack {
                    ZStack{
                        box
                        Text("3 hours")
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                    }
                    ZStack{
                        box
                        Text("4 hours")
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                    }
                }
            }
            
        }
    }
}

//blocks

var box: some View {
    Rectangle()
        .fill(Color.white)
        .cornerRadius(16)
        .frame(width: 150, height: 60)
        .padding(4)
}




struct Screen2_Previews: PreviewProvider {
    static var previews: some View {
        Screen2()
    }
}


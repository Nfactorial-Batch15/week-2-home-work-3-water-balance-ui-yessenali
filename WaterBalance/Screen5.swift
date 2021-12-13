//
//  Screen5.swift
//  WaterBalance
//
//  Created by Yessenali Zhanaidar on 13.12.2021.
//

import SwiftUI

struct Screen5: View {
    @State var progressValue: Float = 0.0
    @State private var name: String = "2400"
    static let gradientStart = Color(red: 212 / 255, green: 225 / 255, blue: 248 / 255, opacity: 1)
    static let gradientEnd = Color(red: 212 / 255, green: 225 / 255, blue: 248 / 255, opacity: 0)

    var body: some View {
            VStack{
                Text("WATER BALANCE")
                    .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                    .font(.system(size: 17))
                    .italic()
                    .fontWeight(.black)
                    .frame(maxWidth: .infinity)
                    .padding()
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 16)
                        .fill(LinearGradient(
                              gradient: .init(colors: [Self.gradientStart, Self.gradientEnd]),
                              startPoint: .init(x: 0.5, y: 0),
                              endPoint: .init(x: 0.5, y: 0.9)
                            ))
                    VStack{
                        ZStack{
                        ProgressBar(progress: self.$progressValue)
                                .frame(width: 180, height: 180, alignment:  .top)
                            .padding(20.0).onAppear() {
                                self.progressValue = 1.0
                                }
                            .padding(.bottom, 32)
                            VStack {
                            Text("34%")
                                .font(.system(size: 36, weight: .bold))
                                .foregroundColor(.black)
                                
                            Spacer().frame(height: 5)
                            Text("0 out of 2,4 L")
                                .foregroundColor(.init(red: 0/255, green: 0/255, blue: 0/255))
                                .font(.custom("SF Pro Display", size: 16))
                                .padding(.bottom, 32)
                                }
                            
                        }
                        
                    }
                   
                    VStack{
                        Text("Monday, 25th of November")
                            .padding(.top, 280)
                        }
                }
            }
            .frame(width: 358,height: 332)
                
            VStack{
            Text("Great job!")
                .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
                .font(.system(size: 36))
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                .padding(.top, 40)
            
            }.padding([.leading, .trailing], 25)
                Spacer()
                VStack{
                    AddButton()
                        .padding(.bottom, 85)
                }
        }.padding([.leading, .trailing], 16)
    }
}
struct Screen5_Previews: PreviewProvider {
    static var previews: some View {
        Screen5()
    }
}







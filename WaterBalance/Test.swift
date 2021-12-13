//
//  Test.swift
//  WaterBalance
//
//  Created by Yessenali Zhanaidar on 11.12.2021.
//

import SwiftUI

struct Test: View {
   var body: some View {
       ZStack{
           HStack{
           Button(action: {}) {
               Image(systemName: "chevron.left")
           }
           .padding()
           
               Text("WATER BALANCE")
                   .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                   .font(.system(size: 17))
                   .italic()
                   .fontWeight(.black)
                   .frame(maxWidth: .infinity)
           }
       }
           
   }
}
struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}

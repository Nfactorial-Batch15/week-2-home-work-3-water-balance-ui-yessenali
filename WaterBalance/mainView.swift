//
//  mainView.swift
//  WaterBalance
//
//  Created by Yessenali Zhanaidar on 12.12.2021.
//

import SwiftUI

struct mainView: View {
    var body: some View {

        VStack(alignment: .center, spacing: 0) {
            Text("WATER BALANCE")
                .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255))
                .font(.system(size: 24))
                .italic()
                .fontWeight(.black)
                .frame(maxWidth: .infinity)
                .padding(.top, 108)

            Text("What is your goal?")
                .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
                .font(.system(size: 36))
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                .padding(.top, 62)

            GoalViews()
                .padding(.top, 32)

            Spacer()
            CustomButton()
                .padding(.bottom, 50)

        }
        .padding([.leading, .trailing], 16)
        .background(Color(red: 252/255, green: 253/255, blue: 255/255).edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
    }
}



struct GoalViews: View {
    @State var item1Selected: Bool = false
    @State var item2Selected: Bool = false
    @State var item3Selected: Bool = false
    @State var item4Selected: Bool = false

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color(red: 212/255, green: 225/255, blue: 248/255))

            VStack(alignment: .center, spacing: 14) {
                ChoiceGoalCustom(title: "Goal Number One", selected: self.$item1Selected)

                ChoiceGoalCustom(title: "Goal Number Two", selected: self.$item2Selected)

                ChoiceGoalCustom(title: "Goal Number Two", selected: self.$item3Selected)

                ChoiceGoalCustom(title: "Goal Number Four", selected: self.$item4Selected)
            }
            .padding(.horizontal, 19)
            .padding(.vertical, 24)
//            .padding(EdgeInsets(top: 24, leading: 19, bottom: 24, trailing: 19)) // alternative
        }
        .frame(height: 330)


    }
}


struct CustomButton: View {
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



struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
    }
}

struct ChoiceGoalCustom: View {
    var title: String = ""
    @Binding var selected: Bool
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color(red: 252/255, green: 253/255, blue: 255/255))
            HStack {
                Text(title)
                    .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
                Spacer()
                Image(self.selected ? "Picker" : "no")
            }
            .padding([.leading, .trailing], 24)
        }
        .onTapGesture {
            self.selected.toggle()
        }
    }
}

//
//  RadioButtonField.swift
//  WaterBalance
//
//  Created by Yessenali Zhanaidar on 12.12.2021.
//

//import SwiftUI
//
//struct RadioButtonField : View {
//    let id: String
//    let label: String
//    let size: CGFloat
//    let color: Color
//    let bgColor: Color
//    let textSize: CGFloat
//    let isMarked: Bool
//    let callback: (String) -> ()
//    
//    init(
//        id: String,
//        label: String,
//        size: CGFloat = 20,
//        color: Color = Color.black,
//        bgColor: Color = Color.black,
//        textSize: CGFloat = 14,
//        isMarked: Bool = false,
//        callback: @escaping (String) -> ()
//        ) {
//            self.id = id
//            self.label = label
//            self.size = size
//            self.color = color
//            self.bgColor = bgColor
//            self.textSize = textSize
//            self.isMarked = isMarked
//            self.callback = callback
//    }
//    
//    var body: some View {
//        Button(action: {
//            self.callback(self.id)
//        }) {
//            HStack (alignment: .center) {
//                Image(systemName: self.isMarked ? "largecircle.fill.circle" : "circle")
//                    .clipShape(Circle())
//                    .foregroundColor(self.bgColor)
//                    Text(label)
//                    .font(Font.system(size: textSize))
//                Spacer()
//            }.foregroundColor(self.color)
//        }.foregroundColor(Color.white)
//    }
//}

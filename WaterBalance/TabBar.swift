//
//  TabBar.swift
//  WaterBalance
//
//  Created by Yessenali Zhanaidar on 13.12.2021.
//

import SwiftUI

struct TabBar: View {
    init() {
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.backgroundColor = .clear
        UITabBar.appearance().standardAppearance = tabBarAppearance
    }
    var body: some View {
        TabView{
            Screen4()
                .tabItem{
                    ZStack{
                        Label("main", systemImage: "house.circle")
                    }
                }
                    
            Screen7()
                .tabItem{
                   Label("settings", systemImage: "slider.horizontal.3")
            }
            Screen6()
                .tabItem{
                    Label("history", systemImage: "doc")
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

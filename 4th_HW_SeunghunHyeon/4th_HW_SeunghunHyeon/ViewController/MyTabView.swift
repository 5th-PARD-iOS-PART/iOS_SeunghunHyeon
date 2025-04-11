//
//  MyTabView.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 3/30/25.
//

import SwiftUI

struct MyTabView: View {
    init(){
        UITabBar.appearance().scrollEdgeAppearance = .init()
    }
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            ContentView()
                .tabItem {
                    Image("home")
                    Text("홈")
                }
                .tag(0)

            Text("혜택 뷰")
                .tabItem {
                    Image("dia")
                    Text("혜택")
                }.tag(1)

            Text("토스쇼핑 뷰")
                .tabItem {
                    Image("shop")
                    Text("토스쇼핑")
                }.tag(2)

            Text("증권 뷰")
                .tabItem {
                    Image("graph")
                    Text("증권")
                }.tag(3)

            Text("전체 뷰")
                .tabItem {
                    Image("burger")
                    Text("전체")
                }.tag(4)
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview{
    MyTabView()
}

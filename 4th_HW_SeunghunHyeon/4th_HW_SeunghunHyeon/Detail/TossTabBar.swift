//
//  TossTabBar.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/4/25.
//

import SwiftUI

struct TossTabBar: View {
    let tabs: [String]
    @Binding var selectedTab: String

    var body: some View {
        HStack(spacing: 30) {
            ForEach(tabs, id: \.self) { tab in
                Text(tab)
                    .font(.system(size: 15, weight: selectedTab == tab ? .bold : .regular))
                    .foregroundColor(.black)
                    .onTapGesture {
                        selectedTab = tab
                    }
                    .overlay(
                        Rectangle()
                            .frame(height: 2)
                            .foregroundColor(selectedTab == tab ? .black : .clear)
                            .padding(.top, 30),
                        alignment: .bottom
                    )
            }
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .padding(.vertical, 10)
        .background(Color.white)
    }
}


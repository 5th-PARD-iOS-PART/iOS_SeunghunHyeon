//
//  CreditTabBar.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/4/25.
//


import SwiftUI

struct CreditTabBar: View {
    var body: some View {
        HStack(spacing: 0) {
            CreditItem(title: "계좌개설")
            CreditItem(title: "카드발급")
            CreditItem(title: "대출받기")
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 10)
    }
}

struct CreditItem: View {
    let title: String

    var body: some View {
        HStack(spacing: 2) {
            Text(title)
                .font(.headline)
                .foregroundColor(.gray)
        }
        .frame(maxWidth: .infinity)
    }
}

//
//  CategoryTabBar.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/4/25.
//

import SwiftUI

struct CategoryTabBar: View {
    var body: some View {
        HStack(spacing: 0) {
            CategoryItem(title: "대출", count: "0")
            CategoryItem(title: "증권", count: "7")
            CategoryItem(title: "저축", count: "3")
            CategoryItem(title: "전체", count: "26")
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 10)
    }
}

struct CategoryItem: View {
    let title: String
    let count: String

    var body: some View {
        HStack(spacing: 4) {
            Text(title)
                .font(.headline)
                .foregroundColor(.gray)
            Text(count)
                .font(.headline)
                .foregroundColor(.gray)
        }
        .frame(maxWidth: .infinity)
    }
}

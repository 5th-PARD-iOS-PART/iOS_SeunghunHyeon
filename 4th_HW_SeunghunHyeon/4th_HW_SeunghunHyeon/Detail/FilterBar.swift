//
//  FilterBar.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/4/25.
//

import SwiftUI

struct FilterBar: View {
    var body: some View {
        HStack {
            HStack(spacing: 4) {
                Text("전체")
                Image(systemName: "chevron.down")
            }

            Spacer()

            Image(systemName: "magnifyingglass")
        }
        .font(.system(size: 15))
        .foregroundColor(.gray)
        .padding(.vertical, 4)
        .padding(.horizontal)
        .listRowInsets(EdgeInsets())
    }
}


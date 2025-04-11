//
//  switch.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/10/25.
//

import SwiftUI

struct switchView: View {
    @State private var isAccountSelected = true  // 기본 탭: 계좌

    var body: some View {
        HStack(spacing: 0) {
            Button(action: {
                isAccountSelected = true
            }) {
                Text("계좌")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(isAccountSelected ? .black : .gray)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 10)
                    .background(isAccountSelected ? Color.white : Color.clear)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }

            Button(action: {
                isAccountSelected = false
            }) {
                Text("연락처")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(!isAccountSelected ? .black : .gray)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 10)
                    .background(!isAccountSelected ? Color.white : Color.clear)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
        .padding(4)
        .background(Color(hex: "#F1F2F4"))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding(.horizontal)

        
    }
}

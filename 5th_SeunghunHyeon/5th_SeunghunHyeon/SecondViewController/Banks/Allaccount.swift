//
//  Allaccount.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/10/25.
//

import SwiftUI

struct Allaccount: View {
    var body: some View {
        HStack {
            HStack(spacing: 4) {
                Text("내 계좌")
            }

            Spacer()
            Text("+18개")
                .padding()
            Image("more2")
        }
        .foregroundColor(.gray)
        .padding(.vertical, 4)
        .padding(.horizontal)
        .listRowInsets(EdgeInsets())
    }
}

#Preview {
    Allaccount()
}

//
//  inputView.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/10/25.
//

import SwiftUI

struct inputView: View {
    var body: some View {
        HStack {
            HStack(spacing: 4) {
                Text("계좌번호 입력")
                    .font(.title2)
            }

            Spacer()

            Image("camera")
        }
        .foregroundColor(.gray)
        .padding(.vertical, 4)
        .padding(.horizontal)
        .listRowInsets(EdgeInsets())
    }
}

#Preview {
    inputView()
}

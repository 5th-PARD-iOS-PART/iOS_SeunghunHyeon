//
//  NearlyAccount.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/11/25.
//

import SwiftUI

struct NearlyAccount: View {
    let accounts = [
        OtherData(title: "KB국민96314175848", name: "김정희"),
        OtherData(title: "카카오뱅크3333-20-8455642", name: "내입출금통장"),
        OtherData(title: "IBK기업286-104115-01-019", name: "김래언"),
        OtherData(title: "KB국민96314175848", name: "김정희"),
        OtherData(title: "카카오뱅크3333-20-8455642", name: "내입출금통장"),
        OtherData(title: "IBK기업286-104115-01-019", name: "김래언"),
    ]

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text("최근 보낸 계좌")
                    .font(.subheadline)
                
            }

            VStack(spacing: 12) {
                ForEach(accounts) { account in
                    HStack(spacing: 12) {
                        Image(account.title)
                            .resizable()
                            .frame(width: 36, height: 36)
                            .cornerRadius(8)

                        VStack(alignment: .leading, spacing: 4) {
                            Text(account.name)
                                .font(.headline)
                            Text("\(account.title)")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }

                        Spacer()

                        Image("nofavorite")
                    }
                }
            }
            .padding()
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: .black.opacity(0.05), radius: 4, x: 0, y: 2)
        }
        .padding(.horizontal)
    }
}

#Preview {
    NearlyAccount()
}

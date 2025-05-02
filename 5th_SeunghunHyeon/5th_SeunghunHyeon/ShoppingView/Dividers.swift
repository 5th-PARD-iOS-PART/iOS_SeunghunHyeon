//
//  Divider.swift
//  5th_SeunghunHyeon
//
//  Created by 현승훈 on 5/2/25.
//

import SwiftUI

struct Dividers: View {
    var body: some View {
        HStack {
                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(height: 1)

                    Text("50초: 스크롤 해야 시간이 줄어요")
                        .font(.caption)
                        .foregroundColor(.gray)
                        .padding(.horizontal, 8)
                        .lineLimit(1)
                        .layoutPriority(1)
                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(height: 1)
                }
                .padding(.horizontal)
            }
        }

//
//  CardRecommendationSection.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/4/25.
//

import SwiftUI

struct Card2: View {
    var body: some View {
                HStack(spacing: 12) {
                    Card1(title: "혜택받는\n체크카드", imageName: "card1")
                    Card1(title: "내 카드보다\n혜택받기", imageName: "card2")

            }
            .padding(.vertical, 8)
        }
    }

//
//  lemon.swift
//  5th_SeunghunHyeon
//
//  Created by 현승훈 on 5/2/25.
//

import SwiftUI

struct lemon: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 2){
            Image("Groups5")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
            HStack{
                Spacer().frame(width: 25,height: 0)
                Text("[최초공개]한정수량 신품종 레몬 캔디 스테비아 방울토마토")
                    .foregroundStyle(Color.gray)
                    .font(.system(size: 13.5))
            }
            HStack{
                Spacer().frame(width: 25,height: 0)
                Text("6,990원")
                    .font(.subheadline)
                Text("12,000원")
                    .font(.caption)
                    .foregroundStyle(Color.gray)
                Image("prime3")
                    .resizable()
                    .frame(width: 178, height: 30)
            }
            HStack{
                Spacer().frame(width:25)
                Text("52.1만명이구경함·무료배송")
                    .font(.system(size: 10))
                    .foregroundStyle(Color.gray)
            }
        }
    }
}

#Preview {
    lemon()
}

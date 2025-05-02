//
//  kiwi.swift
//  5th_SeunghunHyeon
//
//  Created by 현승훈 on 5/2/25.
//

import SwiftUI

struct kiwi: View {
    var body: some View {
        
        HStack{
            Spacer().frame(width: 10)
            Text("하루특가")
                .font(.headline)
                .padding(.horizontal)
            Spacer().frame(width: 190)
            Text("전체보기").foregroundStyle(Color.gray)
            Image("more2")
        }
        VStack(alignment: .leading, spacing: 2){
            Image("Groups2")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
            HStack{
                Spacer().frame(width: 25,height: 0)
                Text("[단독구매불가]압도적 당도 제스프리 루비레드키위 &골드키위사...")
                    .foregroundStyle(Color.gray)
                    .font(.system(size: 13.5))
            }
            HStack{
                Spacer().frame(width: 25,height: 0)
                Text("2,900원")
                    .font(.subheadline)
                Text("5,900원")
                    .font(.caption)
                    .foregroundStyle(Color.gray)
            }
            HStack{
                Spacer().frame(width:25)
                Text("44.6만명이구경함무료배송")
                    .font(.system(size: 10))
                    .foregroundStyle(Color.gray)
            }
        }
    }
}

#Preview
{
    kiwi()
}

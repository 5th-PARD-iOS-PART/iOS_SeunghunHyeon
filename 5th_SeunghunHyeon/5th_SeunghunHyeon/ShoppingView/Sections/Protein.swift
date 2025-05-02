//
//  Protein.swift
//  5th_SeunghunHyeon
//
//  Created by 현승훈 on 5/2/25.
//

import SwiftUI

struct Protein: View {
    var body: some View {
        HStack{
            Text("오늘의 상품")
                .font(.headline)
                .padding(.horizontal)
            Spacer().frame(width: 160)
            Image("time")
            Image("AD")
        }
        VStack(alignment: .leading, spacing: 2){
            Image("Groups3")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
            HStack{
                Spacer().frame(width: 25,height: 0)
                Text("[보틀/파우치증정] 프로티원 단백질 쉐이크 6종 × 2통 (곡물,딸기..")
                    .foregroundStyle(Color.gray)
                    .font(.system(size: 13.5))
            }
            HStack{
                Spacer().frame(width: 25,height: 0)
                Text("35,900원")
                    .font(.subheadline)
                Text("79,800원")
                    .font(.caption)
                    .foregroundStyle(Color.gray)
                Image("prime1")
                    .resizable()
                    .frame(width: 178, height: 30)
            }
            HStack{
                Spacer().frame(width:25)
                Text("93.3만명이구경함·무료배송")
                    .font(.system(size: 10))
                    .foregroundStyle(Color.gray)
            }
        }
    }
}


#Preview {
    Protein()
}

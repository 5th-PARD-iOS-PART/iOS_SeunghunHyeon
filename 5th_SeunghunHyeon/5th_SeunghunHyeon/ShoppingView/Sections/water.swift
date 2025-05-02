//
//  water.swift
//  5th_SeunghunHyeon
//
//  Created by 현승훈 on 5/2/25.
//

import SwiftUI

struct water: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 2){
            Image("Groups4")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
            HStack{
                Spacer().frame(width: 25,height: 0)
                Text("[오늘만]스파클생수 500mL*60병/2L*24병")
                    .foregroundStyle(Color.gray)
                    .font(.system(size: 13.5))
            }
            HStack{
                Spacer().frame(width: 25,height: 0)
                Text("9,900원")
                    .font(.subheadline)
                Text("18,000원")
                    .font(.caption)
                    .foregroundStyle(Color.gray)
                Image("prime2")
                    .resizable()
                    .frame(width: 178, height: 30)
            }
            HStack{
                Spacer().frame(width:25)
                Text("54.9만명이구경함·무료배송")
                    .font(.system(size: 10))
                    .foregroundStyle(Color.gray)
            }
        }
    }
}

#Preview {
    water()
}

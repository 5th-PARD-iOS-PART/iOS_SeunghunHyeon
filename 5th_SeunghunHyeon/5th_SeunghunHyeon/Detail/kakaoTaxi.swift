//
//  KakaoTaxi.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/4/25.
//


import SwiftUI

struct kakaoTaxi: View{
    var data: MockData
    
    var body: some View{
        HStack(spacing: 10){
            Spacer()
            Image("kakaoTaxi")
            VStack{
                Text("카카오 택시_0")
                    .font(.headline)
                    .frame(maxWidth: .infinity,alignment: .leading)
                Text("11:13")
                    .font(.callout)
                    .frame(maxWidth: .infinity,alignment: .leading)
            }
            Spacer()
            VStack{
                Text("-6,200원")
                    .font(.headline)
                    .frame(maxWidth: .infinity,alignment: .trailing)
                Text("38,841원")
                    .font(.caption)
                    .foregroundStyle(.gray)
                    .frame(maxWidth: .infinity,alignment: .trailing)
            }
 
        }
        .frame(width: 350)
        .padding(.vertical, 20)
        .padding(.horizontal, 10)
        
        .background(Color.white)
        .cornerRadius(20)
    }
}

#Preview {
    kakaoTaxi(data: MockData(title: "Kbank", name: "Kbank"))
}

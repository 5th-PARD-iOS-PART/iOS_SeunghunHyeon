//
//  Ibk.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 3/31/25.
//

import SwiftUI

struct Ibk2: View{
    var data: MockData
    
    var body: some View{
        HStack(spacing: 10){
            Spacer()
            Image("ibk")
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(10)

            VStack{
                Text("0,000원")
                    .font(.headline)
                    .frame(maxWidth: .infinity,alignment: .leading)
                Text("보통예금(IBK주거래생활금융통장)")
                    .font(.callout)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    
            }
            Spacer()
            Button("송금"){
                print("송금버튼을 눌렀습니다")
            }
            .fontWeight(.bold)
               .foregroundColor(Color(hex: "#6D7683"))  // 텍스트 색상 변경
               .frame(maxWidth: 59, maxHeight: 36)
               .background(Color(hex: "#F1F2F4"))       // 버튼 배경색 변경
               .cornerRadius(9)
 
        }
        .frame(width: 350)
        .padding(.vertical, 20)
        .padding(.horizontal, 10)
        
        .background(Color.white)
        .cornerRadius(20)
    }
}

#Preview {
    Ibk2(data: MockData(title: "ibk2", name: "ibk2"))
}

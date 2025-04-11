//
//  Credit.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/4/25.
//


import SwiftUI

struct credit: View{
    var data: MockData
    
    var body: some View{
        VStack{
            HStack(spacing: 10){
                Spacer()
                Image("credit")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .cornerRadius(10)
                
                
                Text("내 신용점수")
                    .font(.headline)
                    .frame(maxWidth: .infinity,alignment: .leading)
                
                Spacer()
                Button("확인하기"){
                    print("확인하기 버튼을 눌렀습니다")
                }
                .fontWeight(.bold)
                   .foregroundColor(Color(hex: "#6D7683"))  // 텍스트 색상 변경
                   .frame(maxWidth: 74, maxHeight: 36)
                   .background(Color(hex: "#F1F2F4"))       // 버튼 배경색 변경
                   .cornerRadius(9)
                
            }
            .frame(width: 350)
            .padding(.vertical, 10)
            .padding(.horizontal, 10)
            
            .background(Color.white)
            .cornerRadius(20)
        }
        CreditTabBar()
    }
}

#Preview {
    credit(data: MockData(title: "credit", name: "credit"))
}

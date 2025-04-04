//
//  Used.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/4/25.
//

import SwiftUI

struct Used: View{
    var data: MockData
    
    var body: some View{
        HStack(spacing: 10){
            Spacer()
            Image("Used")
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(10)

            VStack{
                
                    Text("823,643원")
                        .font(.headline)
                        .frame(maxWidth: .infinity,alignment: .leading)
                
                Text("3월에 쓴 돈")
                    .font(.callout)
                    .frame(maxWidth: .infinity,alignment: .leading)
                
            }
            Spacer()
            Button("내역"){
                print("내역버튼을 눌렀습니다")
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
    Used(data: MockData(title: "global", name: "global"))
}

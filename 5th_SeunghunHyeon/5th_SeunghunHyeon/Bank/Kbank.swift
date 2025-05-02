//
//  Kbank.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/4/25.
//

import SwiftUI

struct Kbank: View{
    var data: MockData
    
    var body: some View{
        HStack(spacing: 10){
            Spacer()
            ZStack{
                Image("Used")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .cornerRadius(10)
                Image("Kbank")
            }
            VStack{
                Text("650원")
                    .font(.headline)
                    .frame(maxWidth: .infinity,alignment: .leading)
                Text("MY입출금통장")
                    .font(.callout)
                    .frame(maxWidth: .infinity,alignment: .leading)
            }
            Spacer()
            Button("송금"){
                print("송금버튼을 눌렀습니다")
            }
            .fontWeight(.bold)
               .foregroundColor(Color(hex: "#6D7683"))
               .frame(maxWidth: 59, maxHeight: 36)
               .background(Color(hex: "#F1F2F4"))
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
    Kbank(data: MockData(title: "Kbank", name: "Kbank"))
}

//
//  ETCcal.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/4/25.
//


import SwiftUI

struct ETCcal: View{
    var data: MockData
    
    var body: some View{
            HStack(spacing: 10){
                Spacer()
                Image("cal")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .cornerRadius(10)
                Spacer()
                    Text("더 낸 연말정산 돌려받기")
                        .font(.headline)
                        .foregroundStyle(.gray)
                        .frame(maxWidth: .infinity,alignment: .leading)

                Spacer()
                Image("more2")
                    .frame(maxWidth: 10, maxHeight: 20)
                    .padding(.trailing)
                
            }
            .frame(width: 350)
            .padding(.vertical, 10)
            .padding(.horizontal, 10)
            
            .background(Color.white)
            .cornerRadius(20)
        }
    }

#Preview {
    ETCcal(data: MockData(title: "ETCcal", name: "ETCcal"))
}

//
//  ETCcard.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/4/25.
//


import SwiftUI

struct ETCcard: View{
    var data: MockData
    
    var body: some View{
            HStack(spacing: 10){
                Spacer()
                Image("ETCcard")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .cornerRadius(10)
                Spacer()
                    Text("토스신용카드")
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
    ETCcard(data: MockData(title: "ETCcard", name: "ETCcard"))
}

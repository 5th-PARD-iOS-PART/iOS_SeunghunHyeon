//
//  Hana.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 3/31/25.
//

import SwiftUI

struct Hana: View{
    var data: MockData
    
    var body: some View{
        HStack(spacing: 10){
            Spacer()
            Image("Hana")
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(10)

            VStack{
                Text("339,690원")
                    .font(.headline)
                    .frame(maxWidth: .infinity,alignment: .leading)
                Text("WINGO통장")
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
    Hana(data: MockData(title: "Hana", name: "Hana"))
}

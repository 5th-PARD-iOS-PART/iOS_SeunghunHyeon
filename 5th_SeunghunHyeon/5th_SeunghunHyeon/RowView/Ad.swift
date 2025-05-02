//
//  Ad.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/4/25.
//

import SwiftUI

struct Ad: View{
    var data: MockData
    
    var body: some View{
        HStack(spacing: 10){
            Spacer()
            Image("Ad")
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(10)

            VStack{
                    Text("[7만원]이 지급되었습니다")
                        .font(.headline)
                        .frame(maxWidth: 250,alignment: .leading)
                Text("빗썸신규회원100%지급")
                    .font(.callout)
                    .frame(maxWidth: .infinity,alignment: .leading)
            }
            Spacer()
            
                .frame(maxWidth: 65, maxHeight: 20)
                .padding(.trailing)
 
        }
        .frame(width: 350)
        .padding(.vertical, 20)
        .padding(.horizontal, 10)
        
        .background(Color.white)
        .cornerRadius(20)
    }
}

#Preview {
    Ad(data: MockData(title: "Ad", name: "Ad"))
}

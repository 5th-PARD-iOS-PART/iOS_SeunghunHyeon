//
//  Coin.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/4/25.
//

import SwiftUI

struct coin: View{
    var data: MockData
    
    var body: some View{
        VStack{
            HStack(spacing: 10){
                Spacer()
                Image("coin")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .cornerRadius(10)
                
                VStack{
                    HStack{
                        Text("15,257,990원")
                            .font(.headline)
                            .frame(maxWidth: 250,alignment: .leading)
                        Text("-2.6%")
                            .foregroundStyle(Color.blue)
                            .frame(maxWidth: 50,alignment: .leading)
                    }
                    Text("투자 모아보기* 15개")
                        .font(.callout)
                        .frame(maxWidth: .infinity,alignment: .leading)
                }
                Spacer()
                
                    .frame(maxWidth: 65, maxHeight: 20)
                    .padding(.trailing)
            }
            CategoryTabBar()
                .padding()
        }
        .frame(width: 350)
        .padding(.horizontal, 10)
        
        .background(Color.white)
        .cornerRadius(20)
    }
    
}

#Preview {
    coin(data: MockData(title: "coin", name: "coin"))
}

//
//  global.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/1/25.
//


import SwiftUI

struct global: View{
    var data: MockData
    
    var body: some View{
        HStack(spacing: 10){
            Spacer()
            Image("global")
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(10)

            VStack{
                HStack{
                    Text("118원")
                        .font(.headline)
                    Text("+4.48%")
                        .foregroundStyle(.red)
                        .frame(maxWidth: .infinity,alignment: .leading)
                }
                Text("토스뱅크 외화 통장 * 2개")
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
    global(data: MockData(title: "global", name: "global"))
}

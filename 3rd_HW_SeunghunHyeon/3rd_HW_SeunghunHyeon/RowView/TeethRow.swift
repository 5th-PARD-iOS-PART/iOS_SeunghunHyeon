//
//  DemoRow.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 3/31/25.
//

import SwiftUI

struct TeethRow: View{
    var data: MockData
    
    var body: some View{
            HStack(spacing: 10){
                Spacer()
                Image("teeth")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .cornerRadius(10)
                VStack{
                    Text("치아는 뼈일까?")
                        .font(.headline)
                        .frame(maxWidth: .infinity,alignment: .leading)
                    Text("정답보기")
                        .font(.callout)
                        .frame(maxWidth: .infinity,alignment: .leading)
                }
                Spacer()
                Image("more2")
                    .frame(maxWidth: 10, maxHeight: 20)
                    .padding(.trailing)
                
            }
            .frame(width: 350)
            .padding(.vertical, 30)
            .padding(.horizontal, 10)
            
            .shadow(radius: 2)
            .background(Color.white)
            .cornerRadius(20)
        }
    }

#Preview {
    TeethRow(data: MockData(title: "teeth", name: "teeth"))
}

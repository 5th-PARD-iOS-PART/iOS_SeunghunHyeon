//
//  Samsung.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/10/25.
//

import SwiftUI

struct Samsung: View {
    var data: OtherData
    
    var body: some View{
        HStack(spacing: 10){
            Spacer()
            Image("blue")
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(10)
                VStack{
                    Text("종합매매")
                        .font(.headline)
                        .frame(maxWidth: .infinity,alignment: .leading)
                    Text("삼성증권7112898902-01")
                        .font(.system(size: 10))
                        .frame(maxWidth: .infinity,alignment: .leading)
                }
            Spacer()
            Image("favorite")
                .padding(.trailing)
                .frame(width: 100)
            }
        }
    }


#Preview {
    Samsung(data: OtherData(title: "blue", name: "blue"))
}

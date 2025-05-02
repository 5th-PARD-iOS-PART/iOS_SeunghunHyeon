//
//  HANA.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/10/25.
//

import SwiftUI

struct HANA: View {
    var data: OtherData
    
    var body: some View{
        HStack(spacing: 10){
            Spacer()
            Image("Hana")
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(10)
                VStack{
                    Text("WINGO통장")
                        .font(.headline)
                        .frame(maxWidth: .infinity,alignment: .leading)
                    Text("하나은행157-891652-62107")
                        .font(.system(size: 10))
                        .frame(maxWidth: 250,alignment: .leading)
                }
            Spacer()
            Image("favorite")
                .padding(.trailing)
                .frame(width: 100)
            }
        }
    }


#Preview {
    HANA(data: OtherData(title: "HANA", name: "HANA"))
}

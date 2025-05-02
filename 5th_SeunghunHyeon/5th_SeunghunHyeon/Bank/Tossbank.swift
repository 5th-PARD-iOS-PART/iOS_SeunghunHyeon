//
//  Tossbank.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 3/31/25.
//

import SwiftUI

struct Tossbank: View{

    var body: some View{
        HStack(spacing: 10){
            Spacer()
                .frame(width: 10)
            Text("토스뱅크")
                .font(.system(size: 20))
            Spacer()
            Text("내 소비복권 긁기")
            Image("more2")
                .frame(maxWidth: 10, maxHeight: 20)
                .padding(.trailing)
 
        }
        .frame(width: 350)
        .padding(.vertical, 15)
        .padding(.horizontal, 10)
        
        .background(Color.white)
        .cornerRadius(15)
    }
}

#Preview {
    Tossbank()
}

//
//  SecondView.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/10/25.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("어디로 돈을 보낼까요?")
                    .font(.title)
                    .padding(.horizontal)
            
                switchView()
                    .padding(.horizontal)
                
                inputView()
                    .padding(.horizontal)
                
                Divider()
                    .padding(.horizontal)
                
                FavoriteAccountView()
                    .padding(.bottom, 20)
            }
            .padding(.top)
            .background(Color.white)
            NearlyAccount()
        }
        .background(Color.white)
        .navigationTitle("보내기")
    }
}


#Preview {
    SecondView()
}

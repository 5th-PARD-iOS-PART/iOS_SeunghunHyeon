//
//  AccountToss.swift
//  3rd_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/4/25.
//

import SwiftUI

        struct AccountToss: View {
            var body: some View {
                VStack(alignment: .leading, spacing: 10) {
                    Text("토스뱅크1000-9047-0710")
                        .font(.system(size: 13))
                        .foregroundColor(.gray)
                    
                    HStack {
                        Text("38,841원")
                            .font(.system(size: 28, weight: .bold))
                        
                        Spacer()
                        Button(action: {
                            print("카드 버튼 눌림")
                        }) {
                            HStack(spacing: 5) {
                                Image("Card")
                                    .resizable()
                                    .frame(width: 12, height: 16)
                                
                                Text("카드")
                                    .font(.system(size: 13, weight: .bold))
                                    .foregroundColor(Color(hex: "#6D7683"))
                            }
                            .padding(.horizontal, 10)
                            .frame(width: 78, height: 45)
                            .background(Color(hex: "#F1F2F4"))
                            .cornerRadius(22)
                        }
                    }
                    
                    HStack(spacing: 10) {
                        Button(action: {}) {
                            Text("채우기")
                                .font(.system(size: 15, weight: .semibold))
                                .foregroundColor(.blue)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.blue.opacity(0.1))
                                .cornerRadius(10)
                        }
                        
                        Button(action: {}) {
                            Text("보내기")
                                .font(.system(size: 15, weight: .semibold))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                    }
                    
                    HStack {
                        Image("lighting")
                            .foregroundColor(.blue)
                        
                        VStack(alignment: .leading) {
                            Text("어제까지 쌓인 이자 ")
                                .font(.system(size: 14))
                            Text("114원 지급받기")
                                .font(.system(size: 14, weight: .semibold))
                        }
                        
                        Spacer()
                        
                        Image("more2")
                            .foregroundColor(.gray)
                            .font(.system(size: 13))
                    }
                    .padding(.top, 5)
                }
                .padding(.horizontal)
                .padding(.vertical)
            }
        }
#Preview {
    AccountToss()
}

//
//  Untitled.swift
//  4th_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/11/25.
//

import SwiftUI

struct Sending: View {
    let toAccountName: String
    let amount: Int
    
    var body: some View {
        VStack(spacing: 30) {
            // 타이틀
            HStack {
                Image(systemName: "chevron.left")
                    .foregroundColor(.black)
                Spacer()
                Text("토스뱅크 송금")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Spacer()
                Spacer()
            }
            .padding(.horizontal)
            .padding(.top, 10)
            
            Spacer()
            
            // 메인 문구
            VStack(spacing: 8) {
                Text("내 \(toAccountName)으로")
                    .foregroundColor(.blue)
                    .font(.title2)
                    .bold()
                
                Text("\(NumberFormatter.localizedString(from: NSNumber(value: amount), number: .decimal))원을")
                    .font(.title)
                    .bold()
                
                Text("옮길까요?")
                    .font(.title3)
            }
            
            Spacer()
            
            // 상세 정보
            VStack(spacing: 20) {
                HStack {
                    Text("받는 분에게 표시")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("유재혁")
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }
                
                HStack {
                    Text("출금 계좌")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("내 토스뱅크 통장")
                }
                
                HStack {
                    Text("입금 계좌")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("하나은행15789165262107")
                }
            }
            .padding(.horizontal)
            .font(.subheadline)
            
            // 옮기기 버튼
            Button(action: {
                print("송금 실행됨")
            }) {
                Text("옮기기")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            
            Text("평생수수료 무료")
                .font(.caption)
                .foregroundColor(.gray)
                .padding(.top, 10)
            
            Spacer()
        }
        .background(Color.white)
    }
}

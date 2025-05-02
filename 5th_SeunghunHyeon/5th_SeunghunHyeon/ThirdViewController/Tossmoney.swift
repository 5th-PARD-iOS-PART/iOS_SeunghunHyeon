//
//  Tossmoney.swift
//  4th_HW_SeunghunHyeon
//
//  Created by 현승훈 on 4/11/25.
//
import SwiftUI

struct Tossmoney: View {
    let balance: String
    @State private var amountInput: String = ""
    @State private var navigateToSending = false

    var formattedAmount: String {
        guard let amount = Int(amountInput) else { return "" }
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter.string(from: NSNumber(value: amount)) ?? ""
    }
    
    var amountInKorean: String {
        guard let amount = Int(amountInput) else { return "" }
        if amount >= 10000 {
            let man = amount / 10000
            let rest = amount % 10000
            let restFormatted = NumberFormatter.localizedString(from: NSNumber(value: rest), number: .decimal)
            return "\(man)만\(restFormatted)원"
        } else {
            return "\(NumberFormatter.localizedString(from: NSNumber(value: amount), number: .decimal))원"
        }
    }
    
    var balanceValue: Int {
        // "40,206원" → 40206
        let digits = balance.filter { $0.isNumber }
        return Int(digits) ?? 0
    }
    
    var amountValue: Int {
        Int(amountInput) ?? 0
    }
    
    var isOverBalance: Bool {
        amountValue > balanceValue
    }
    
    var body: some View {
        VStack(spacing: 20) {
            // 상단 타이틀
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
            
            // 출금 계좌
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text("내 토스뱅크 통장")
                        .font(.headline)
                    Text("에서")
                        .foregroundColor(.gray)
                }
                Text("잔액 \(balance)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            .padding(.top, 10)
            
            // 입금 계좌
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text("내 WINGO통장")
                        .font(.headline)
                    Text("으로")
                        .foregroundColor(.gray)
                }
                Text("하나은행15789165262107")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            // 금액 표시 영역
            VStack(alignment: .leading, spacing: 8) {
                if amountInput.isEmpty {
                    Text("얼마나 옮길까요?")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(.top, 20)
                    
                    Text("잔액\(balance)원입력")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 8)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(8)
                } else {
                    Text("\(formattedAmount)원")
                        .font(.system(size: 36, weight: .bold))
                    Text(amountInKorean)
                        .foregroundColor(isOverBalance ? .red : .gray)
                        .font(.subheadline)
                    
                    if isOverBalance {
                        Text("잔액이 \(balance)이에요.")
                            .foregroundColor(.red)
                            .font(.footnote)
                    }
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            Spacer()
            
            // 다음 버튼
            Button(action: {
                navigateToSending = true
            }) {
                Text("다음")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(isOverBalance || amountInput.isEmpty ? Color.gray.opacity(0.3) : Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .disabled(isOverBalance || amountInput.isEmpty)
            .padding(.horizontal)

            
            // 키패드
            VStack(spacing: 20) {
                ForEach([["1", "2", "3"],
                         ["4", "5", "6"],
                         ["7", "8", "9"],
                         ["00", "0", "⌫"]], id: \.self) { row in
                    HStack(spacing: 30) {
                        ForEach(row, id: \.self) { item in
                            Button(action: {
                                handleKeyTap(item)
                            }) {
                                Text(item)
                                    .font(.title2)
                                    .frame(width: 60, height: 60)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
            }
            .padding(.bottom, 30)
            NavigationLink(
                            destination: Sending(toAccountName: "WINGO통장", amount: amountValue),
                            isActive: $navigateToSending
                        ) {
                            EmptyView()
                        }
                        .hidden()
                    }
        .background(Color.white)
    }
    
    // 입력 처리
    func handleKeyTap(_ key: String) {
        switch key {
        case "⌫":
            if !amountInput.isEmpty {
                amountInput.removeLast()
            }
        default:
            if amountInput.count < 9 {
                amountInput += key
            }
        }
    }
}
